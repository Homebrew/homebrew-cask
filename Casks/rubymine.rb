cask 'rubymine' do
  version '2019.1.1,191.6707.59'
  sha256 'c6c896fe4372af6a1c9cdb8eef160b792359f0893d984a9d417f3180ea43b3fb'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release'
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'

  auto_updates true

  app 'RubyMine.app'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mine.py"
  binary shimscript, target: 'mine'

  preflight do
    IO.write shimscript, <<~EOS
#!/usr/bin/env python
# -*- coding: utf-8 -*-

import socket
import struct
import sys
import os
import time

# see com.intellij.idea.SocketLock for the server side of this interface

RUN_PATH = u'/Applications/RubyMine.app'
CONFIG_PATH = os.path.expanduser(u'~/Library/Preferences/RubyMine#{version.major_minor}')
SYSTEM_PATH = os.path.expanduser(u'~/Library/Caches/RubyMine#{version.major_minor}')


def print_usage(cmd):
    print(('Usage:\\n' +
           '  {0} -h | -? | --help\\n' +
           '  {0} [project_dir]\\n' +
           '  {0} [-l|--line line] [project_dir|--temp-project] file[:line]\\n' +
           '  {0} diff <left> <right>\\n' +
           '  {0} merge <local> <remote> [base] <merged>').format(cmd))


def process_args(argv):
    args = []

    skip_next = False
    for i, arg in enumerate(argv[1:]):
        if arg == '-h' or arg == '-?' or arg == '--help':
            print_usage(argv[0])
            exit(0)
        elif i == 0 and (arg == 'diff' or arg == 'merge' or arg == '--temp-project'):
            args.append(arg)
        elif arg == '-l' or arg == '--line':
            args.append(arg)
            skip_next = True
        elif skip_next:
            args.append(arg)
            skip_next = False
        else:
            path = arg
            if ':' in arg:
                file_path, line_number = arg.rsplit(':', 1)
                if line_number.isdigit():
                    args.append('-l')
                    args.append(line_number)
                    path = file_path
            args.append(os.path.abspath(path))

    return args


def try_activate_instance(args):
    port_path = os.path.join(CONFIG_PATH, 'port')
    token_path = os.path.join(SYSTEM_PATH, 'token')
    if not (os.path.exists(port_path) and os.path.exists(token_path)):
        return False

    try:
        with open(port_path) as pf:
            port = int(pf.read())
        with open(token_path) as tf:
            token = tf.read()
    except (ValueError):
        return False

    s = socket.socket()
    s.settimeout(0.3)
    try:
        s.connect(('127.0.0.1', port))
    except (socket.error, IOError):
        return False

    found = False
    while True:
        try:
            path_len = struct.unpack('>h', s.recv(2))[0]
            path = s.recv(path_len).decode('utf-8')
            if os.path.abspath(path) == os.path.abspath(CONFIG_PATH):
                found = True
                break
        except (socket.error, IOError):
            return False

    if found:
        cmd = 'activate ' + token + '\\0' + os.getcwd() + '\\0' + '\\0'.join(args)
        if sys.version_info[0] >= 3: cmd = cmd.encode('utf-8')
        encoded = struct.pack('>h', len(cmd)) + cmd
        s.send(encoded)
        time.sleep(0.5)  # don't close the socket immediately
        return True

    return False


def start_new_instance(args):
    if sys.platform == 'darwin':
        if len(args) > 0:
            args.insert(0, '--args')
        os.execvp('/usr/bin/open', ['-a', RUN_PATH] + args)
    else:
        bin_file = os.path.split(RUN_PATH)[1]
        os.execv(RUN_PATH, [bin_file] + args)


ide_args = process_args(sys.argv)
if not try_activate_instance(ide_args):
    start_new_instance(ide_args)
    EOS
  end

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'mine') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/RubyMine#{version.major_minor}",
               "~/Library/Caches/RubyMine#{version.major_minor}",
               "~/Library/Logs/RubyMine#{version.major_minor}",
               "~/Library/Preferences/RubyMine#{version.major_minor}",
             ]
end

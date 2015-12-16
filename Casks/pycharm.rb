cask :v1 => 'pycharm' do
  version '5.0.2'
  sha256 'a35146c4163b348000ba3db1a3db34341b6443cda6bf9242f181d84390a9d647'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial
  tags :vendor => 'JetBrains'

  preflight do
    system '/usr/bin/unzip', '-o', "#{staged_path}/PyCharm.app/Contents/lib/resources.jar", 'launcher.py', '-d', "#{staged_path}/bin/"

    IO.write "#{staged_path}/bin/launcher.py", File.read("#{staged_path}/bin/launcher.py").gsub('$RUN_PATH$', "#{staged_path}/PyCharm.app").gsub('$CONFIG_PATH$', '~/Library/Preferences/PyCharm50')
  end

  app 'PyCharm.app'
  binary 'bin/launcher.py', :target => 'charm'
end

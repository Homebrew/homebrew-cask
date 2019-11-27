cask 'openwebstart' do
  version '1.0.0'
  sha256 '218c66318d1ffb2f6d18d634e4a25248407fe90d3229752f8480716bfd869841'

  # github.com/karakun/OpenWebStart was verified as official when first introduced to the cask
  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/karakun/OpenWebStart/releases.atom'
  name 'OpenWebStart'
  homepage 'https://openwebstart.com/'

  installer script: {
                      executable:   "#{staged_path}/OpenWebStart Installer.app/Contents/MacOS/JavaApplicationStub",
                      args:         ['-q'],
                      sudo:         true,
                      print_stderr: false,
                    }

  uninstall_preflight do
    set_ownership '/Applications/OpenWebStart'
  end

  uninstall script: {
                      executable: '/Applications/OpenWebStart/OpenWebStart Uninstaller.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-c'],
                      sudo:       true,
                    }

  zap trash: [
               '~/.config/icedtea-web',
               '~/.cache/icedtea-web',
               '/Applications/OpenWebStart',
             ]
end

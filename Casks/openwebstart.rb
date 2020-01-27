cask 'openwebstart' do
  version '1.1.3'
  sha256 'd3e24da81bef0c5f62b1adbb9675e29adc164c0d7e541e4fb93813295e06b656'

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

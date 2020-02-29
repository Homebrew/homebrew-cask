cask 'openwebstart' do
  version '1.1.4'
  sha256 '6743f7b0f74497642c1a16dbb9a61e0460c3ed81988374ac98f519c6e4bfe0c1'

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

cask 'private-internet-access' do
  version :latest
  sha256 :no_check
  url "https://www.privateinternetaccess.com/installer/download_installer_osx_beta"
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com/'
  license :commercial

  installer script: {
                      executable: "#{staged_path}/Private Internet Access Installer.app/Contents/MacOS/pia-installer",
                      sudo:       true,
                    }
  postflight do
    set_ownership '~/.pia_manager'
  end

  zap trash: '~/.pia_manager'


end

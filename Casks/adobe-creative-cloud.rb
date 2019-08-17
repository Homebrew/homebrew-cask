cask 'adobe-creative-cloud' do
  version :latest
  sha256 :no_check

  url 'https://ccmdls.adobe.com/AdobeProducts/KCCC/1/osx10/CreativeCloudInstaller.dmg'
  name 'Adobe Creative Cloud'
  homepage 'https://creative.adobe.com/products/creative-cloud'

  installer script: {
                      executable: "#{staged_path}/Creative Cloud Installer.app/Contents/MacOS/Install",
                      args:       ['--mode=silent'],
                      sudo:       true,
                    }

  uninstall delete: "#{staged_path}/#{token}", # Needs to be uninstalled manually
            rmdir:  '/Applications/Utilities/Adobe Installers'
end

cask 'adobe-creative-cloud' do
  version :latest
  sha256 :no_check

  url 'https://ccmdls.adobe.com/AdobeProducts/KCCC/1/osx10/CreativeCloudInstaller.dmg'
  name 'Adobe Creative Cloud'
  homepage 'https://creative.adobe.com/products/creative-cloud'

  depends_on macos: '>= :mavericks'

  installer manual: 'Creative Cloud Installer.app'
end

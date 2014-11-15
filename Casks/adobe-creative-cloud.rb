cask :v1 => 'adobe-creative-cloud' do
  version :latest
  sha256 :no_check

  url 'https://ccmdls.adobe.com/AdobeProducts/KCCC/1/osx10/CreativeCloudInstaller.dmg'
  homepage 'https://creative.adobe.com/products/creative-cloud'
  license :commercial

  installer :manual => 'Creative Cloud Installer.app'
end

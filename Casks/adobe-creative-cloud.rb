class AdobeCreativeCloud < Cask
  url 'https://ccmdls.adobe.com/AdobeProducts/KCCC/1/osx10/CreativeCloudInstaller.dmg'
  homepage 'https://creative.adobe.com/products/creative-cloud'
  version 'latest'
  no_checksum
  caskroom_only true
  caveats do
    manual_installer 'Creative Cloud Installer.app'
  end
end

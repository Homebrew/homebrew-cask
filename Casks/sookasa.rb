cask 'sookasa' do
  version '3.19.5'
  sha256 '62f6d6f47effa668bbf0b1ec42c7c06fd536ba59a5487bd1955edfe9c38b9f52'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_#{version}.pkg"
  appcast 'https://s3.amazonaws.com/sookasa-static-assets/mac-apps/appcats/appcast_mac_no_update.xml',
          checkpoint: '448360f2c1eec35b8b7ab5d6beaf5ecf25ea3f4a1f6d6f181f60aeb3bba3fcce'
  name 'Sookasa'
  homepage 'https://www.sookasa.com'
  license :commercial

  pkg "Sookasa_#{version}.pkg"

  uninstall quit:    'com.sookasa.Sookasa',
            pkgutil: 'com.sookasa.Sookasa'
end

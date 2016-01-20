cask 'sookasa' do
  version '3.18.5'
  sha256 'a3b281cd276b6ea933a8bf6133aeee4200f02d7b55bec91cacc4863316a7479a'

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

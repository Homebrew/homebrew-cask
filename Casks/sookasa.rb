cask 'sookasa' do
  version '3.18.5'
  sha256 'a3b281cd276b6ea933a8bf6133aeee4200f02d7b55bec91cacc4863316a7479a'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_#{version}.pkg"
  appcast 'https://s3.amazonaws.com/sookasa-static-assets/mac-apps/appcats/appcast_mac_no_update.xml',
          :sha256 => 'da83dc90a0c0c0fa1466f87d3b5a0af269bfeecdc18601be77d9408ef51c2556'
  name 'Sookasa'
  homepage 'https://www.sookasa.com'
  license :commercial

  pkg "Sookasa_#{version}.pkg"

  uninstall :quit    => 'com.sookasa.Sookasa',
            :pkgutil => 'com.sookasa.Sookasa'
end

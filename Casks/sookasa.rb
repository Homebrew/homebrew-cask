cask :v1 => 'sookasa' do
  version '3.13.10'
  sha256 'eb762362a9f2a04bc7599ae1ad279416c970370eaf45cfc16d278fc33d9ee731'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_#{version}.pkg"
  name 'Sookasa'
  appcast 'https://s3.amazonaws.com/sookasa-static-assets/mac-apps/appcats/appcast_mac_no_update.xml',
          :sha256 => 'da83dc90a0c0c0fa1466f87d3b5a0af269bfeecdc18601be77d9408ef51c2556'
  homepage 'https://www.sookasa.com'
  license :commercial

  pkg "Sookasa_#{version}.pkg"

  uninstall :quit => 'com.sookasa.Sookasa',
            :pkgutil => 'com.sookasa.Sookasa'
end

cask 'flux' do
  version '39.987'
  sha256 'eea57d27d059a50bfc74525f78469e11495c6b8e93c5adfefdce1897015359ec'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml'
  name 'f.lux'
  homepage 'https://justgetflux.com/'

  auto_updates true

  app 'Flux.app'

  uninstall quit: 'org.herf.Flux'

  zap trash: [
               '~/Library/Application Support/Flux',
               '~/Library/Caches/org.herf.Flux',
               '~/Library/Containers/com.justgetflux.flux',
               '~/Library/Cookies/org.herf.Flux.binarycookies',
               '~/Library/Preferences/org.herf.Flux.plist',
             ]
end

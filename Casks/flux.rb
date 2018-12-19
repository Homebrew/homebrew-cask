cask 'flux' do
  version '39.9871'
  sha256 '122a451943ce68a11d3db3b11c74566cef99ed61ab6767679d96cdd8d57a82c2'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml'
  name 'f.lux'
  homepage 'https://justgetflux.com/'

  auto_updates true

  app 'Flux.app'

  uninstall login_item: 'Flux',
            quit:       'org.herf.Flux'

  zap trash: [
               '~/Library/Application Support/Flux',
               '~/Library/Caches/org.herf.Flux',
               '~/Library/Containers/com.justgetflux.flux',
               '~/Library/Cookies/org.herf.Flux.binarycookies',
               '~/Library/Preferences/org.herf.Flux.plist',
             ]
end

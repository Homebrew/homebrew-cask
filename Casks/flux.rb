cask 'flux' do
  version :latest
  sha256 :no_check

  url 'https://justgetflux.com/mac/Flux.zip'
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

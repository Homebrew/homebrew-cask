cask 'flux' do
  version '39.987'
  sha256 'a94f0adc267700c933dba0ed71b3dd6ef4891499e94bbb6be0903a3dbc0692b2'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '990dd378d8fa7fcf3bbac37c1b96c30b88583dff95b8555c241c637dcabdbffa'
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

cask 'flux' do
  version '39.987'
  sha256 'a94f0adc267700c933dba0ed71b3dd6ef4891499e94bbb6be0903a3dbc0692b2'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: 'ee801644f709e7dd5517823626eb7b2096610fd66004b65e210909cc7d5c1d77'
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

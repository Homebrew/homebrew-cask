cask 'flux' do
  version '39.983'
  sha256 '7b04effd88f4b12029cc929d9b3a5646e35be89bb5ea4404157133e9c96348e6'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '14d58c843aa0572f1b3ad517a143e79c2865011629ced4a6314ca695f2e6995a'
  name 'f.lux'
  homepage 'https://justgetflux.com/'

  auto_updates true

  app 'Flux.app'

  uninstall login_item: 'Flux',
            quit:       'org.herf.Flux'

  zap delete: [
                '~/Library/Preferences/org.herf.Flux.plist',
                '~/Library/Caches/org.herf.Flux',
                '~/Library/Cookies/org.herf.Flux.binarycookies',
                '~/Library/Application Support/Flux',
                '~/Library/Containers/com.justgetflux.flux',
              ]
end

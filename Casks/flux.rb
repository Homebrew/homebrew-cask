cask 'flux' do
  version '39.982'
  sha256 '85ee6f5090cbd95c1b139f74276a781f643315bb6f35973ed65d5af9bc62e77f'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '985279ebc6a5d234bcf5b04d94220702b9bbdaa2f89a4720f3444a395ed1d47b'
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

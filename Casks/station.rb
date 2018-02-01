cask 'station' do
  version '1.3.1'
  sha256 '38a94789bd847f4e2f2d8b6051f81b8e19eff50158e8b043b50aff507e75cdb7'

  # github.com/getstation/desktop-app-releases was verified as official when first introduced to the cask
  url "https://github.com/getstation/desktop-app-releases/releases/download/#{version}/Station-#{version}-mac.zip"
  appcast 'https://github.com/getstation/desktop-app-releases/releases.atom',
          checkpoint: 'e5f819d1b59aa2517c837c82b7ef7d79c3fae45431739a2aaee8d68b46f42438'
  name 'Station'
  homepage 'https://getstation.com/'

  auto_updates true

  app 'Station.app'

  uninstall quit: [
                    'org.efounders.BrowserX',
                    'org.efounders.BrowserX.helper',
                  ]

  zap trash: '~/Library/Application Support/Station/'
end

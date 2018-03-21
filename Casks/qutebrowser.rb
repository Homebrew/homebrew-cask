cask 'qutebrowser' do
  version '1.2.1'
  sha256 '14d25d57ed9462978e4bc5d6f42c15676d98f84591ebb1f41f4140e27376556d'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '16bd5c29c7e4a9cad78d0e50a824741256dcc623da1c92006e7c10c64b2613a3'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end

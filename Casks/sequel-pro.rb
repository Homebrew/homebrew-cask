cask 'sequel-pro' do
  version '1.1.2'
  sha256 '7b34fd63c13e9e9ca4f87d548241ff9df9a266b554af23549efd7be006f387c6'

  # github.com/sequelpro/sequelpro was verified as official when first introduced to the cask
  url "https://github.com/sequelpro/sequelpro/releases/download/release-#{version}/sequel-pro-#{version}.dmg"
  appcast 'https://github.com/sequelpro/sequelpro/releases.atom',
          checkpoint: '47c9e6a368cfced1f05cfe8d4052fa582c9071b2bfe16c42d2677066f6d7ea10'
  name 'Sequel Pro'
  homepage 'https://www.sequelpro.com/'

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end

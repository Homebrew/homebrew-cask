cask 'sequel-pro' do
  version '1.1.2'
  sha256 '7b34fd63c13e9e9ca4f87d548241ff9df9a266b554af23549efd7be006f387c6'

  # github.com/sequelpro/sequelpro was verified as official when first introduced to the cask
  url "https://github.com/sequelpro/sequelpro/releases/download/release-#{version}/sequel-pro-#{version}.dmg"
  appcast 'https://github.com/sequelpro/sequelpro/releases.atom',
          checkpoint: 'dd327a631d7302069c3628f75454e419d9e490372607d08e428285a1fe69eb5c'
  name 'Sequel Pro'
  homepage 'https://www.sequelpro.com/'

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap trash: [
               '~/Library/Application Support/Sequel Pro',
               '~/Library/Caches/com.sequelpro.SequelPro',
               '~/Library/Preferences/com.sequelpro.SequelPro.plist',
               '~/Library/Saved Application State/com.sequelpro.SequelPro.savedState',
             ]
end

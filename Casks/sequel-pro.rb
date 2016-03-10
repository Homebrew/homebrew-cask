cask 'sequel-pro' do
  version '1.1.1'
  sha256 'e76c20d52d559157deca648c6ca9cf590af0eb3b08313fd0817b19e7fd3a1550'

  # github.com/sequelpro/sequelpro was verified as official when first introduced to the cask
  url "https://github.com/sequelpro/sequelpro/releases/download/#{version}/sequel-pro-#{version}.dmg"
  appcast 'https://github.com/sequelpro/sequelpro/releases.atom',
          checkpoint: 'ea7d94cb740cc1f7b9d941d5b8a344434986f6d07029fdf7b3883347e5347fc6'
  name 'Sequel Pro'
  homepage 'http://www.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end

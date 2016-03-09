cask 'sequel-pro' do
  version '1.1.1'
  sha256 'e76c20d52d559157deca648c6ca9cf590af0eb3b08313fd0817b19e7fd3a1550'

  # github.com/sequelpro/sequelpro was verified as official when first introduced to the cask
  url "https://github.com/sequelpro/sequelpro/releases/download/#{version}/sequel-pro-#{version}.dmg"
  appcast 'https://github.com/sequelpro/sequelpro/releases.atom',
          checkpoint: 'ed6e4b83bcd0ca3b51fec9aa6e7663a0392314cecc40bb3cdae1a2fc18f07d69'
  name 'Sequel Pro'
  homepage 'http://www.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end

cask 'browserosaurus' do
  version '9.3.0'
  sha256 'fc5c79ab6d66510c47da7b85c63cbb4a548a18781dcc762ef17e602f737d2204'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  auto_updates true

  app 'Browserosaurus.app'
end

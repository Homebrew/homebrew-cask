cask 'browserosaurus' do
  version '6.3.0'
  sha256 '747211d56c611e4b3abb213c9c522550b3e086a23eab40f7bcb4adc0e3b75c91'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end

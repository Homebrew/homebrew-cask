cask 'browserosaurus' do
  version '10.7.0'
  sha256 'cd8fca2c81b0b5cebbe6cb259e7f30c39341100b89f40328ea5acb761eca6f41'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end

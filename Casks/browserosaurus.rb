cask 'browserosaurus' do
  version '10.5.0'
  sha256 '4d63f524418ffcd71b7fa3bde9ff5f3f936ada7cffc60cda8f03482c2ac871f8'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end

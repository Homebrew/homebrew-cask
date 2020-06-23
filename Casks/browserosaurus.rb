cask 'browserosaurus' do
  version '10.9.0'
  sha256 '5f8ee37d10adde79f257a6056d903ddad77922d32268f7dba478a182063f980d'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  auto_updates true

  app 'Browserosaurus.app'
end

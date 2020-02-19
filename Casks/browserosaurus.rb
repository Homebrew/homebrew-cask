cask 'browserosaurus' do
  version '9.2.0'
  sha256 '0ae39544e13c2d2500e7e55587a366f7e2cabd5bfc3d6b605b56d52843f72bd4'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  auto_updates true

  app 'Browserosaurus.app'
end

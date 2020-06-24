cask 'browserosaurus' do
  version '10.9.1'
  sha256 'd0e35f7a6626dba372d466f5e412c41450b826851d010042d0fa0e6f653d602e'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  auto_updates true

  app 'Browserosaurus.app'
end

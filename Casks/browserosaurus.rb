cask 'browserosaurus' do
  version '5.3.0'
  sha256 '7fd2be74de05f0ec70b2a04c16427d3eebc49fef59f95ce803851833557bdcaa'

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast 'https://github.com/will-stone/browserosaurus/releases.atom'
  name 'Browserosaurus'
  homepage 'https://will-stone.github.io/browserosaurus/'

  app 'Browserosaurus.app'
end

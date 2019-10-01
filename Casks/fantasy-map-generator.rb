cask 'fantasy-map-generator' do
  version '1.0'
  sha256 'e15c3d3418c48081c3fe42fe86304c6ad29f9a80980d3fcf7797a7a8b13edbca'

  # github.com/Azgaar/Fantasy-Map-Generator was verified as official when first introduced to the cask
  url 'https://github.com/Azgaar/Fantasy-Map-Generator/releases/download/v1.0/FMG-darwin-x64.zip'
  appcast 'https://github.com/Azgaar/Fantasy-Map-Generator/releases.atom'
  name "Azgaar's Fantasy Map Generator"
  homepage 'https://azgaar.github.io/Fantasy-Map-Generator'

  app "Azgaar's Fantasy Map Generator-darwin-x64/Azgaar\'s\ Fantasy\ Map\ Generator.app"
end

cask 'fantasy-map-generator' do
  version '1.2'
  sha256 'c8c64c031afe5423c83f8ad38e39da7b41a551ca248705b5b23c7718967b07da'

  # github.com/Azgaar/Fantasy-Map-Generator/ was verified as official when first introduced to the cask
  url "https://github.com/Azgaar/Fantasy-Map-Generator/releases/download/v#{version}/FMG-darwin-x64.zip"
  appcast 'https://github.com/Azgaar/Fantasy-Map-Generator/releases.atom'
  name "Azgaar's Fantasy Map Generator"
  homepage 'https://azgaar.github.io/Fantasy-Map-Generator'

  app "Azgaar's Fantasy Map Generator-darwin-x64/Azgaar's Fantasy Map Generator.app"
end

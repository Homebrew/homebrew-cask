cask 'fantasy-map-generator' do
  version '1.1'
  sha256 '5332121f1e7ea47d72ca4f452401f5218708cb8d022f4c4613abbad573260815'

  # github.com/Azgaar/Fantasy-Map-Generator was verified as official when first introduced to the cask
  url "https://github.com/Azgaar/Fantasy-Map-Generator/releases/download/v#{version}/FMG-darwin-x64.zip"
  appcast 'https://github.com/Azgaar/Fantasy-Map-Generator/releases.atom'
  name "Azgaar's Fantasy Map Generator"
  homepage 'https://azgaar.github.io/Fantasy-Map-Generator'

  app "Azgaar's Fantasy Map Generator-darwin-x64/Azgaar's Fantasy Map Generator.app"
end

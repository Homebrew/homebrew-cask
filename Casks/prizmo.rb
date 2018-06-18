cask 'prizmo' do
  version '3.5.1'
  sha256 '151e8106d013e5f3b6bd5afa2fc0271a6c77b69609ee1faced8e0fd6cc1414d3'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end

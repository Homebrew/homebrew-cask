cask 'prizmo' do
  version '3.1.17'
  sha256 '0af2df1273baace2d4f76ad021f059432ae2cc2b97979dfe77e79e4afe32dee0'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml",
          checkpoint: 'f1124a1ab975b749e905f0e5a8c14fa6b1bd09b5023897863113e6f0393d3e41'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end

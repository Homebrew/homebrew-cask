cask 'prizmo' do
  version '3.5.2'
  sha256 '18b709b76ff07e8a4c59758fe9fc4daf5eb7133953f590ca0cbf57af7cceb939'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end

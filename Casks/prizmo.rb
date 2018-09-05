cask 'prizmo' do
  version '3.5.4'
  sha256 '68f6d344b66a884d077cc63cf842d589c34f75ae315002da03cc15be8f053902'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end

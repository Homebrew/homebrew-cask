cask 'prizmo' do
  version '3.1.6'
  sha256 '60aec96c280ed1b735302d1cb54a04b8359bcffdde21f7e12ce02db7e8831dd0'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          :sha256 => '4a028abca428192ba0a1eb313c5d2ca40ab641f8a429d0a48513ac02faaf0fb1'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end

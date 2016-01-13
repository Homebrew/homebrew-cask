cask 'prizmo' do
  version '3.1.6'
  sha256 '60aec96c280ed1b735302d1cb54a04b8359bcffdde21f7e12ce02db7e8831dd0'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          :checkpoint => '75b704bb0e1d6aad720d080aa3b7f63e1d30065ab25cd7fb665080f821a7221c'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end

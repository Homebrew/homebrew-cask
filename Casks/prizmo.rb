cask 'prizmo' do
  version '3.1.6'
  sha256 '60aec96c280ed1b735302d1cb54a04b8359bcffdde21f7e12ce02db7e8831dd0'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          checkpoint: 'eba03521a0016bc7a527a9e113835a0baef743cfc011dc4d54b6dc52079011e5'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end

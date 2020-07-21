cask 'shutter-encoder' do
  version '14.0'
  sha256 '27ca443dd502efe5ef8527d629b8b4ef270c756590a084b57a8f59fbe836d600'

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast 'https://www.shutterencoder.com/changelog.txt'
  name 'Shutter Encoder'
  homepage 'https://www.shutterencoder.com/'

  app 'Shutter Encoder.app'
end

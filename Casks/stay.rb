cask 'stay' do
  version '1.2.5'
  sha256 '4ca4048d75c2b3199e1a46c06797a1a483ebf7f9ca9fa48ddac9eb1bfe75bc58'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.zip"
  appcast 'https://cordlessdog.com/stay/appcast.xml',
          checkpoint: 'dd47f901301581842a3ed3754de4285c41453b43529391421073e805f80aed96'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'
  license :commercial

  app 'Stay.app'
end

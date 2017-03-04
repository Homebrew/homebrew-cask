cask 'gurps-character-sheet' do
  version '4.8.0'
  sha256 '79b4e3dbad0216b3163eda9ee5336451eccec7e895636570da75f44d0f3dc86a'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  appcast 'http://gurpscharactersheet.com/releases.php',
          checkpoint: 'c1154e7284a80073c5f6d8b72433bcdd4b07b3aa113e958bb8915c092fb35f8b'
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com/'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end

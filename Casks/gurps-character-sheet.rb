cask 'gurps-character-sheet' do
  version '4.4.1'
  sha256 '60dade1ab02a478158ec9926ac5b8b1e08f316a08344da415aa947563c6074df'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end

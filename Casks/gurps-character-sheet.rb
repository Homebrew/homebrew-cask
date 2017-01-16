cask 'gurps-character-sheet' do
  version '4.7.0'
  sha256 '5a633046dc78aaaef9e554f95cf16c141dceeb4b3b74daa4ece799e754acaaa7'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  appcast 'http://gurpscharactersheet.com/releases.php',
          checkpoint: 'e7828c3fbb3364f691effe4bd1b34caeafbde224f68a93721e7091da964c16c9'
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com/'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end

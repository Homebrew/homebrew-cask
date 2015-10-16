cask :v1 => 'gurps-character-sheet' do
  version '4.1.1'
  sha256 'e5b397384730affe350e26a80a0db57f4dcd636711de6de93fe3acedaca5b5d6'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com'
  license :mpl

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end

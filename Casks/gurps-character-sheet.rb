cask 'gurps-character-sheet' do
  version '4.3.0'
  sha256 'f1a4d9ee526b57ab0bb41b07de2c140a1be212d6f00c8a7aeafe78e552af572c'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com'
  license :mpl

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end

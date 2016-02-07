cask 'gurps-character-sheet' do
  version '4.2.0'
  sha256 '52b927a303e8c3bf1c551e7a41c1af72b946eadd246f8704cc91d3ffeeff4514'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com'
  license :mpl

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end

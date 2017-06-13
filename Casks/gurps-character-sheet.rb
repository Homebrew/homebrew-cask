cask 'gurps-character-sheet' do
  version '4.9.0'
  sha256 'eb43287b7f16d3e9d8e70b69a295384005425cf1ea692b773421648bfebc93eb'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  appcast 'https://github.com/richardwilkes/gcs/releases.atom',
          checkpoint: '13bc736566f7277eac5f99ba6a68ff158833be0cae135e82884a12d70d94cece'
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com/'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end

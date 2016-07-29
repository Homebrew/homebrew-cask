cask 'notebook' do
  version '4.0.7v759'
  sha256 'e7d8f89090c51959eda0b1fd1dd1c5446bcd90a0a428937bb4ff19831187ddf4'

  url "https://www.circusponies.com/availabledownloads/NoteBook/CircusPoniesNoteBook#{version}.dmg"
  name 'Circus Ponies Notebook'
  homepage 'http://www.circusponies.com/'
  license :commercial

  app 'Notebook.app'
end

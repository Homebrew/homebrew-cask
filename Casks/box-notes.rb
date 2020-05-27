cask 'box-notes' do
  version :latest
  sha256 :no_check

  url 'https://e3.boxcdn.net/box-installers/boxnotes/mac/latest/Box%20Notes.zip'
  name 'Box Notes'
  homepage 'https://www.box.com/resources/downloads/notes'

  app 'Box Notes.app'

  zap trash: [
               '~/Library/Application Support/Box Notes',
               '~/Library/Preferences/com.box.box-notes.helper.plist',
               '~/Library/Preferences/com.box.box-notes.plist',
             ]
end

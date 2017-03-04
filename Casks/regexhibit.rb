cask 'regexhibit' do
  version :latest
  sha256 :no_check

  url 'http://roger-jolly.nl/software/downloads/regexhibit/RegExhibit.zip'
  name 'RegExhibit'
  homepage 'http://roger-jolly.nl/software/#regexhibit'

  app 'RegExhibit.app'

  zap delete: [
                '~/Library/Preferences/com.JollyRogerSoft.RegExhibit.plist',
                '~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jollyrogersoft.regexhibit.sfl',
              ]
end

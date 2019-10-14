cask 'nimble' do
  version '1.3.3'
  sha256 'ce669fc631ac88033d153b0096dbaef7809666ff8a6d7b4c932af83756207641'

  # github.com/Maybulb/Nimble was verified as official when first introduced to the cask
  url "https://github.com/Maybulb/Nimble/releases/download/#{version}/Nimble-#{version}.dmg"
  appcast 'https://github.com/Maybulb/Nimble/releases.atom'
  name 'Nimble'
  homepage 'https://maybulb.com/'

  app 'Nimble.app'

  zap trash: [
               '~/.nimble-options.json',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.nimble.sfl*',
               '~/Library/Application Support/com.electron.nimble.ShipIt',
               '~/Library/Application Support/Nimble',
               '~/Library/Caches/com.electron.nimble',
               '~/Library/Caches/Nimble',
               '~/Library/Preferences/com.electron.nimble.plist',
               '~/Library/Saved Application State/com.electron.nimble.savedState',
             ]
end

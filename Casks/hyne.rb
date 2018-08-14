cask 'hyne' do
  version '1.9.2c'
  sha256 '74ddb3cee06e840849241da41e3fca32e4f20d4918e9786d9bb55b4643a59f95'

  url "https://github.com/myst6re/hyne/releases/download/#{version}/Hyne-#{version}-osx64.tar.gz"
  appcast 'https://github.com/myst6re/hyne/releases.atom'
  name 'Hyne'
  homepage 'https://github.com/myst6re/hyne'

  app "hyne-#{version}-osx64/Hyne.app"

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vin047.hyne.sfl*',
               '~/Library/Preferences/com.vin047.hyne.plist',
               '~/Library/Saved Application State/com.vin047.hyne.savedState',
             ]
end

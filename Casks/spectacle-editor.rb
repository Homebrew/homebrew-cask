cask 'spectacle-editor' do
  version '0.1.5'
  sha256 'c09b6b19f1dd47e83d55df0096a47dc45c4a0838d83836e62b643738412ad780'

  # github.com/FormidableLabs/spectacle-editor was verified as official when first introduced to the cask
  url "https://github.com/FormidableLabs/spectacle-editor/releases/download/v#{version}/Spectacle.Editor-#{version}.dmg"
  appcast 'https://github.com/FormidableLabs/spectacle-editor/releases.atom'
  name 'Spectacle Editor'
  homepage 'https://formidable.com/open-source/spectacle-editor/'

  app 'Spectacle Editor.app'

  zap trash: [
               '~/Library/Application Support/Spectacle Editor',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.formidable.spectacle-editor.sfl*',
               '~/Library/Preferences/com.formidable.spectacle-editor.plist',
             ]
end

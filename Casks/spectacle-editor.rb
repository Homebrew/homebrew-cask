cask 'spectacle-editor' do
  version '0.1.4'
  sha256 'd86b80d5ed91308c1ed6f480e2be73e6f2620c025cba954310c526cf24b086b9'

  # github.com/FormidableLabs/spectacle-editor was verified as official when first introduced to the cask
  url "https://github.com/FormidableLabs/spectacle-editor/releases/download/v#{version}/Spectacle.Editor-#{version}.dmg"
  appcast 'https://github.com/FormidableLabs/spectacle-editor/releases.atom',
          checkpoint: 'd1035190c7acb31b161d495b84a919860f5b8901570a14430b22520243f1b789'
  name 'Spectacle Editor'
  homepage 'https://formidable.com/open-source/spectacle-editor/'

  app 'Spectacle Editor.app'

  zap trash: [
               '~/Library/Application Support/Spectacle Editor',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.formidable.spectacle-editor.sfl*',
               '~/Library/Preferences/com.formidable.spectacle-editor.plist',
             ]
end

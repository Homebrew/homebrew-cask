cask 'spectacle-editor' do
  version '0.1.3'
  sha256 '6148958a0f75a13efdef11a88fcad01745c049d632a310aadf9a65d6ce911b0d'

  # github.com/FormidableLabs/spectacle-editor was verified as official when first introduced to the cask
  url "https://github.com/FormidableLabs/spectacle-editor/releases/download/v#{version}/Spectacle.Editor-#{version}.dmg"
  appcast 'https://github.com/FormidableLabs/spectacle-editor/releases.atom',
          checkpoint: 'c8e0be2b73a5ba750b227282cb27d29a644bec513f170d2e10aff74823b697b4'
  name 'Spectacle Editor'
  homepage 'https://formidable.com/open-source/spectacle-editor/'

  app 'Spectacle Editor.app'

  zap delete: [
                '~/Library/Application Support/Spectacle Editor',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.formidable.spectacle-editor.sfl',
                '~/Library/Preferences/com.formidable.spectacle-editor.plist',
              ]
end

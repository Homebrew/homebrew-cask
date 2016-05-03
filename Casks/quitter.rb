cask 'quitter' do
  version '1.0'
  sha256 'ea9a8261a2c2b349a89334b32e9f678881761132fbe19c4f7c9e8ca51716eb96'

  url 'https://marco.org/appcasts/Quitter.zip'
  appcast 'https://marco.org/appcasts/quitter.xml',
          checkpoint: '86758bd410d5ae1bc3e1b0042bd75e4d55f74417c2af8ed4c299017e273cfbec'
  name 'Quitter'
  homepage 'https://marco.org/apps#quitter'
  license :gratis

  auto_updates true

  app 'Quitter.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Preferences/com.marcoarment.quitter.plist',
                '~/Library/Caches/com.marcoarment.quitter',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.marcoarment.quitter.sfl',
              ]
end

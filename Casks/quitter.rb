cask 'quitter' do
  version :latest
  sha256 :no_check

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

cask 'quitter' do
  version :latest
  sha256 :no_check

  url 'https://marco.org/appcasts/Quitter.zip'
  name 'Quitter'
  homepage 'https://marco.org/apps#quitter'
  license :gratis

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

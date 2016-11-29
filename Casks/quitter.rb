cask 'quitter' do
  version '1.0 (107)'
  sha256 'ad4071a48aeed019fbb9ebf80ce717c1c15ade24298a33e823dc0d1c218baed4'

  url 'https://marco.org/appcasts/Quitter.zip'
  appcast 'https://marco.org/appcasts/quitter.xml',
          checkpoint: '51873371a0fbdd7664b2e143e17ccca9fb4d962602dcd42618812fe24be4134c'
  name 'Quitter'
  homepage 'https://marco.org/apps#quitter'

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

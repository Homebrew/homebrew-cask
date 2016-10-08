cask 'monodraw' do
  version 'b93'
  sha256 'c9fd0903694dd71ed3103afdf54d5941cc8b6a9362282afbf0cc8a7164e70853'

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-#{version}.zip"
  appcast 'https://updates.helftone.com/monodraw/appcast-beta.xml',
          checkpoint: 'a03fdd2a7856dc04af59224a7a06f02bddbe6a5387be4a6a10696eae01d67031'
  name 'Monodraw'
  homepage 'http://monodraw.helftone.com'
  license :commercial

  app 'Monodraw.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Preferences/com.helftone.monodraw.plist',
                '~/Library/Caches/com.helftone.monodraw',
              ]
end

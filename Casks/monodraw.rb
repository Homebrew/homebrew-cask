cask 'monodraw' do
  version 'b94'
  sha256 '2e0dc71d06c9f6a56b7a6c8f31c9fe3689c53ec4bd28c9ff175c6065e7565970'

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-#{version}.zip"
  appcast 'https://updates.helftone.com/monodraw/appcast-beta.xml',
          checkpoint: '396a457a8e3a7d22e75960aeb983dae5a9f425c427ac3684750d1f48addc300d'
  name 'Monodraw'
  homepage 'https://monodraw.helftone.com/'

  app 'Monodraw.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Preferences/com.helftone.monodraw.plist',
                '~/Library/Caches/com.helftone.monodraw',
              ]
end

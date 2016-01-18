cask 'monodraw' do
  version 'b83'
  sha256 '4aa030c5d55451d5fb4625ae931b7ae061dd888a82762cd43471e60cef211c6c'

  url "http://updates.helftone.com/monodraw/downloads/Monodraw-#{version}.zip"
  appcast 'http://updates.helftone.com/monodraw/appcast-beta.xml',
          checkpoint: '5830ff9786d7be63384f29a25ca50d0cd90a857c93beb607abee08518de09c1f'
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

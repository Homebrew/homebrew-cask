cask 'monodraw' do
  version 'b88'
  sha256 '233cc3b96681bb3dc6358ca846ad1b938b5fa1d77834f7fca149fa15d5deec96'

  url "http://updates.helftone.com/monodraw/downloads/Monodraw-#{version}.zip"
  appcast 'http://updates.helftone.com/monodraw/appcast-beta.xml',
          checkpoint: 'd8023e46e9ab868fd198e0c403776749e74a2d1dd431d9c4af503f3c405b5402'
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

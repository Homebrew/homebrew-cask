cask :v1 => 'monodraw' do
  version :latest
  sha256 :no_check

  url 'http://updates.helftone.com/monodraw/downloads/Monodraw-latest.zip'
  name 'Monodraw'
  appcast 'http://updates.helftone.com/monodraw/appcast-beta.xml',
          :sha256 => 'b15571cccfb97339f5762eff8a74a4f6fd4a0a1006f41071ab05a7d5e65193cd'
  homepage 'http://monodraw.helftone.com'
  license :commercial

  app 'Monodraw.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Preferences/com.helftone.monodraw.plist',
                  '~/Library/Caches/com.helftone.monodraw',
                 ]
end

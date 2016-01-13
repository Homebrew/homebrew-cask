cask 'monodraw' do
  version :latest
  sha256 :no_check

  url 'http://updates.helftone.com/monodraw/downloads/Monodraw-latest.zip'
  appcast 'http://updates.helftone.com/monodraw/appcast-beta.xml',
          :checkpoint => '7cbf74a76be621a867b2d1f02581ee94d343301a816cac8c760ac17abacd643e'
  name 'Monodraw'
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

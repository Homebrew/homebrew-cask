cask :v1 => 'monodraw' do
  version :latest
  sha256 :no_check

  url 'http://updates.helftone.com/monodraw/downloads/Monodraw-latest.zip'
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

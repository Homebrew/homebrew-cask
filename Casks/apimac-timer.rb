cask :v1 => 'apimac-timer' do
  version :latest
  sha256 :no_check

  url 'http://www.apimac.com/download/Timer.zip'
  homepage 'http://www.apimac.com/mac/timer/'
  license :gratis

  app 'Apimac Timer.app'

  zap :delete => [
                  '~/Library/Preferences/Apimac',
                  '~/Library/Application Support/Apimac',
                 ]
end

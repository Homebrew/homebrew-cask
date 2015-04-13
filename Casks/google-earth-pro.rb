cask :v1 => 'google-earth-pro' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthProMac-Intel.dmg'
  name 'Google Earth Pro'
  homepage 'https://www.google.com/earth/'
  license :gratis
  tags :vendor => 'Google'

  app 'Google Earth Pro.app'

  zap :delete => [
                  '~/Library/Application Support/Google Earth',
                  '~/Library/Caches/Google Earth',
                  '~/Library/Caches/com.Google.GoogleEarthPro',
                 ]

  caveats <<-EOS.undent
    Using #{token} requires a license key. If you do not have a key, use your
    email address and the key GEPFREE to sign in.
  EOS
end

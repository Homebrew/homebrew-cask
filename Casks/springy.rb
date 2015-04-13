cask :v1 => 'springy' do
  version '1.6.1'
  sha256 '7b84ee8834bbcd1a7b17895a6bc3fa6adc127dbd09146821eb125730ae68882e'

  url 'http://www.springyarchiver.com/springy.zip'
  name 'Springy'
  homepage 'http://www.springyarchiver.com/'
  license :gratis

  app 'Springy.app'

  zap :delete => [
                  '~/Library/Preferences/com.milke.Springy.LSSharedFileList.plist',
                  '~/Library/Preferences/com.milke.Springy.plist',
                  '~/Library/Caches/com.milke.Springy',
                 ]

  caveats <<-EOS.undent
    An unlimited license is available for #{token} at

      http://www.springyarchiver.com/license.php
  EOS
end

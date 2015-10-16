cask :v1 => 'mac2imgur' do
  version :latest
  sha256 :no_check

  # mileswd.com is the official download host per the vendor homepage
  url 'https://mileswd.com/mac2imgur/latest'
  name 'mac2imgur'
  appcast 'https://mileswd.com/mac2imgur/update',
          :sha256 => '1235c533476928d64f6787886a3dc78b421fe8e379cc4e936aeb44152dc09bd1'
  homepage 'https://github.com/mileswd/mac2imgur'
  license :gpl

  app 'mac2imgur.app'

  zap :delete => [
                  '~/Library/Caches/com.mileswd.mac2imgur',
                  '~/Library/Preferences/com.mileswd.mac2imgur.plist'
                 ]
end

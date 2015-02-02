cask :v1 => 'mac2imgur' do
  version :latest
  sha256 :no_check

  url 'https://mac2imgur.mileswd.com/static/mac2imgur.zip'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'
  license :gpl

  app 'mac2imgur.app'

  zap :delete => [
                  '~/Library/Caches/com.mileswd.mac2imgur',
                  '~/Library/Preferences/com.mileswd.mac2imgur.plist'
                 ]
end

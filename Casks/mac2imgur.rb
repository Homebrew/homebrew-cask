cask :v1 => 'mac2imgur' do
  version :latest
  sha256 :no_check

  # mileswd.com is the official download host per the vendor homepage
  url 'https://mileswd.com/mac2imgur/latest'
  name 'mac2imgur'
  appcast 'https://mileswd.com/mac2imgur/update',
          :sha256 => '9bae9fb9910fbb4143bdb4b87c2deb5ddbbb21b49176ae5e745c54272d69f56e'
  homepage 'https://github.com/mileswd/mac2imgur'
  license :gpl

  app 'mac2imgur.app'

  zap :delete => [
                  '~/Library/Caches/com.mileswd.mac2imgur',
                  '~/Library/Preferences/com.mileswd.mac2imgur.plist'
                 ]
end

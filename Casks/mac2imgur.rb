cask 'mac2imgur' do
  version '3.0'
  sha256 '49d731e9dc15378c2045d459ce910a13154cb37d8e0f2126ceed973557a02d92'

  # mileswd.com is the official download host per the vendor homepage
  url 'https://mileswd.com/mac2imgur/latest'
  appcast 'https://mileswd.com/mac2imgur/update',
          :sha256 => '6a6b8ba83cf7d03f1d8a03ba95ff4802eb4ff6f7486e1625b1bc1c8d5c5a9dab'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'
  license :gpl

  app 'mac2imgur.app'

  zap :delete => [
                   '~/Library/Caches/com.mileswd.mac2imgur',
                   '~/Library/Preferences/com.mileswd.mac2imgur.plist',
                 ]
end

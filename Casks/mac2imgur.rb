cask 'mac2imgur' do
  version '3.0'
  sha256 '49d731e9dc15378c2045d459ce910a13154cb37d8e0f2126ceed973557a02d92'

  # mileswd.com is the official download host per the vendor homepage
  url 'https://mileswd.com/mac2imgur/latest'
  appcast 'https://mileswd.com/mac2imgur/update',
          :sha256 => 'cd85f67023a9a430f41949a60be77d0d7e4a60d2ab2a464ed3fae3497feb16bf'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'
  license :gpl

  app 'mac2imgur.app'

  zap :delete => [
                   '~/Library/Caches/com.mileswd.mac2imgur',
                   '~/Library/Preferences/com.mileswd.mac2imgur.plist',
                 ]
end

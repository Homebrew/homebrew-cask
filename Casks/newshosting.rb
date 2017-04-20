cask 'newshosting' do
  version '2.2.1'
  sha256 '98be3864b4c564b452c78586e5ec264b8d84b29b1c95dbcf7733dfb4b1c3644a'

  # w8m8b4g9.ssl.hwcdn.net/www.newshosting.com was verified as official when first introduced to the cask
  url "https://w8m8b4g9.ssl.hwcdn.net/www.newshosting.com/client/newshosting_#{version}.dmg"
  name 'Newshosting'
  homepage 'https://www.newshosting.com/'
  license :commercial

  app 'Newshosting.app'
end

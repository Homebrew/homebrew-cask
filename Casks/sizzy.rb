cask 'sizzy' do
  version '0.18.0'
  sha256 '8365377523c236be8a9cb3cb24b689a6af5d275c906db7a31419b717692cf409'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

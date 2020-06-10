cask 'sizzy' do
  version '0.22.0'
  sha256 '531149423c97d2d2d0d8c7d4cfdf878b8f4ea46b4fe4e6cfa3d02fa27c00ddb0'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

cask 'sizzy' do
  version '0.24.0'
  sha256 '042b6e82fe72d39309a80355281a8c6bb84adfbe04f2dd4fbfabb2d3ef2c06a3'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

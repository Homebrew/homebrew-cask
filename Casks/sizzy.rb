cask 'sizzy' do
  version '0.19.0'
  sha256 'c71a6d3a4c04a0fb7a0100bfd6652446010bca527c3952d95fe2f5427614ffc8'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

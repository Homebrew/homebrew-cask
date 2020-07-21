cask 'sizzy' do
  version '0.28.1'
  sha256 '6a6a1f206cca74c4c26fcc9f3eaeec1df35b3bb9d5d3bacb5bcf6bbf9f963214'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

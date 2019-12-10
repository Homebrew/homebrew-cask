cask 'sizzy' do
  version '0.12'
  sha256 '2bd63371a35acba0e6abd07df9a073a5a4c1e7841656fa5be0dce8ebc315a007'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

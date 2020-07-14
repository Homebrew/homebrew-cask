cask 'sizzy' do
  version '0.27.0'
  sha256 '8d294d80424ae570f2015303de779291e47cb3fae22a13e52ec311f58c26a055'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

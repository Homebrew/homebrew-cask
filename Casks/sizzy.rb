cask 'sizzy' do
  version '0.28.0'
  sha256 '1c50a2342801c967d0e8f298121247b5c0f3326b91737756d7f93f73b178356a'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

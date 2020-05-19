cask 'sizzy' do
  version '0.20.0'
  sha256 'bca61723d744dbdfb58a85419faba265fe3c92f3b69167b31b204c435bf560f4'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

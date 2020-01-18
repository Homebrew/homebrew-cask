cask 'sizzy' do
  version '0.14.0'
  sha256 '9933ac96e687ba0e4f61970de44777d45ee4a09cf4eebcb69d3919289d6395f4'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

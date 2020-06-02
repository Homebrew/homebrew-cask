cask 'sizzy' do
  version '0.21.0'
  sha256 'd703987188c059e45967d5a2fc4a385148e87b4d83228231ffb62c231efd6062'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

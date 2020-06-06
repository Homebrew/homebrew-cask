cask 'sizzy' do
  version '0.21.1'
  sha256 'b7a7ac60ea151d4629673d2de0baf52ad99129003fac05b8d55e3f955f83930a'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

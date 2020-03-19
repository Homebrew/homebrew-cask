cask 'sizzy' do
  version '0.18.2'
  sha256 '4cc34e2efb70dd002b6761d7de6f86d43172182f0763abc1e077228bb276ecc7'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

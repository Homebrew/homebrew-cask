cask 'sizzy' do
  version '0.23.1'
  sha256 '3815647171b62e0d0315b289c9f489db3914a01b5895d97b1402fdb93d63309e'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

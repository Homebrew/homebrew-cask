cask 'sizzy' do
  version '0.18.1'
  sha256 '1b3780ed5ed15fd14cbf867139e4cb00ae282ec099a33fb9cc33ecd09711a75a'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

cask 'sizzy' do
  version '0.15.1'
  sha256 '0ef6cfcdbe9d4c16d0286794cdec3f80c089905c0d0a320d038f2d566041d890'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

cask 'sizzy' do
  version '0.23.0'
  sha256 '4410e2a06fc12a8b6d90bf6e74ae948d55562780fb65b4834431f75fe4655092'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

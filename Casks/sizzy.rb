cask 'sizzy' do
  version '0.16.0'
  sha256 '8b95363a78be59ef8dcad8ad4921e51519b27bf99cfd81f5c9815a4cd5909c87'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

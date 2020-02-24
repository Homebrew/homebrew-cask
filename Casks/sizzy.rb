cask 'sizzy' do
  version '0.17.2'
  sha256 'd4deb78e85195014b10e0161b661197671dbafe46f6ac81781eb0235c481ea04'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

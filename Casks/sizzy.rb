cask 'sizzy' do
  version '0.26.0'
  sha256 '3ba4b733ed97ffe637f4a03b03e2a8cd8092efb8f7bf52a5ec035433bcad175b'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

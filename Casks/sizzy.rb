cask 'sizzy' do
  version '0.26.1'
  sha256 'fd0371497fe70ce35a4214fde32de267a9e99f58181295def135d77aa073337b'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

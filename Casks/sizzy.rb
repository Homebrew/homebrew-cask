cask 'sizzy' do
  version '0.25.2'
  sha256 'a44316eaac5f2b87bf073505b864ed8554effc8a6c3b5e956c8df434b82b8761'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

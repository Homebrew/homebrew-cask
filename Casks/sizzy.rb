cask 'sizzy' do
  version '0.20.0'
  sha256 'f9780d350b9e69666069af63cdeadec2ecea960c988e02df0a4e01b51f1a00ec'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

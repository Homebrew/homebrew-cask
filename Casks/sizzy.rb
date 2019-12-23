cask 'sizzy' do
  version '0.13.1'
  sha256 'f3a8f0226d22c596cf42e5b312d732744f09936c668af2c8fd1a85bbff50ad4f'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

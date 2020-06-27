cask 'sizzy' do
  version '0.25.1'
  sha256 '6eae91454e193b5334826de75330efac64c5649d225c02ec86bddc53cd26e56e'

  url 'https://sizzy.co/get-app'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X'
  name 'Sizzy'
  homepage 'https://sizzy.co/'

  auto_updates true

  app 'Sizzy.app'
end

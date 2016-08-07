cask 'jwzlyrics' do
  version '1.13'
  sha256 '33661b9ec28f38be48fcd7bb53c9b90a0d1dc4e32eafc69b1896a15c44c0b776'

  url "https://www.jwz.org/jwzlyrics/jwzlyrics-#{version}.zip"
  appcast 'https://www.jwz.org/jwzlyrics/updates.xml',
          checkpoint: 'c48af683455fe3c72bc0aabc1c2e1d7dfa74c06dc5b41cb928b91709c5b01768'
  name 'jwzlyrics'
  homepage 'https://www.jwz.org/jwzlyrics/'
  license :unknown

  app 'jwzlyrics.app'
end

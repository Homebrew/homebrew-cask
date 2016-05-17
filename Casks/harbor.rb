cask 'harbor' do
  version '0.1'
  sha256 '1de5be9ac66bdb79b2dd2ef4e6303f0bbc93c7fca11561e446e8d67d94ab14ef'

  url 'https://github.com/devmynd/harbor/releases/download/v0.1/Harbor.app.zip'
  name 'Harbor'
  homepage 'https://github.com/devmynd/harbor'
  license :mit

  app 'Harbor.app'
end

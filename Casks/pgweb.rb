cask :v1 => 'pgweb' do
  version '0.6.0'
  sha256 '69f71cfb16e2f24eb9bca14c2444c47d19539e2a223bc0f81d80aeed3592fa17'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

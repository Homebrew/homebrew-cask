class Pgweb < Cask
  version '0.3.1'
  sha256 'bfebb2a37990474dca8a4f7fa07973af16ed1020fc3c1ac4e3c3504d713732d2'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

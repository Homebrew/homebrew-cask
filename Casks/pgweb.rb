class Pgweb < Cask
  version '0.3.0'
  sha256 'b871676c5c2fafa6deabcee8a72dd593e3562504dd32e38ea03840219ea60eba'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

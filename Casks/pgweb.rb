cask :v1 => 'pgweb' do
  version '0.4.1'
  sha256 'd43493cf2d2255f9adc103fa88f9d714ff33ecc8988581d6b01425a395404eff'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

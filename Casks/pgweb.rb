cask 'pgweb' do
  version '0.9.0'
  sha256 '7d077aa6d4bed88ba8dc867654369aaddc477ce4e222a8eb3495d57c0dcad9ed'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '108721904f9db9935331f4299f220c340b3086b4126d2330acea53e02b79ed76'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end

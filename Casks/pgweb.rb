cask :v1 => 'pgweb' do
  version '0.5.1'
  sha256 'ffc7f22d9591660902f8725bb392ec861f80fb9747021d93262a640d672fea02'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

cask :v1 => 'pgweb' do
  version '0.6.1'
  sha256 '8cc98baefdb9e7a3c76708cdcba1ef11b2f1d76d8c94ee1e9d9446bb572d66bd'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

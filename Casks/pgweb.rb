cask :v1 => 'pgweb' do
  version '0.4.1'
  sha256 '3c97605f1ac22f03a737a2d32a45b8f35988290123d593d0c21cb28010893fc7'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

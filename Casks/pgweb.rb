cask :v1 => 'pgweb' do
  version '0.6.3'
  sha256 'bfa041bdbdd7a3424faa0be6b524302c0f4c6610c06afa8784904b2a91b64024'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

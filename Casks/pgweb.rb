cask :v1 => 'pgweb' do
  version '0.5.3'
  sha256 '324ac3a019bdbd1404163e3e9e82eab8a26f8db85dd31eed4609ca0dff7cba8d'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

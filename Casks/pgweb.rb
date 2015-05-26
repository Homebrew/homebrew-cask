cask :v1 => 'pgweb' do
  version '0.5.3'
  sha256 'a6be3e3fc9f830647319fc31d19f6cb2cc889074f81bc27b9fa60f379ea2a6c1'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

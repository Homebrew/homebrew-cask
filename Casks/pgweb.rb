cask :v1 => 'pgweb' do
  version '0.4.0'
  sha256 'dac59afaef75db663e0f2a30ec035806b205a9acbe1e2a7a156b3e58dc571ea7'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

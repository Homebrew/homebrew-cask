cask 'pgweb' do
  version '0.8.0'
  sha256 '259ceaa19e0359af8090fa805a8fbf80633bdcfecbcbd2c472614b8b533fd20b'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          :sha256 => 'fbf5b1df511c3f5856afab78693a9b8536cd8560184ad80167549e6625953d01'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

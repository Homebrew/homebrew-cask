cask 'pgweb' do
  version '0.8.0'
  sha256 '259ceaa19e0359af8090fa805a8fbf80633bdcfecbcbd2c472614b8b533fd20b'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          :sha256 => '1f3fcec0f463001cd69229dfdd3bc1e7ed93c0c6e392004042bd8846fc4fbe7b'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

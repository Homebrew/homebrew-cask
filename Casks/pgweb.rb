cask :v1 => 'pgweb' do
  version '0.5.2'
  sha256 'ecca54470db7b29d40114feeb767f5991ee598c7aaa856ca220591070d67659b'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end

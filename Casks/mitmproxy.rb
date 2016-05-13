cask 'mitmproxy' do
  version '0.17.1'
  sha256 'dd5b2779f078c3208c02c673ee6343bf7aedf1c1759df20f8103241147d833ea'

  url "https://github.com/mitmproxy/mitmproxy/releases/download/v#{version}/mitmproxy-#{version}-osx.tar.gz"
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'
  license :mit

  binary "mitmproxy-#{version}-osx/mitmproxy"
  binary "mitmproxy-#{version}-osx/mitmdump"
end

cask 'mitmproxy' do
  version '0.15'
  sha256 'b071e758be27005f10e580e3ca7b194d475fe8e57b971f36b44275234a7617d6'

  url "https://mitmproxy.org/download/osx-mitmproxy-#{version}.tgz"
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'
  license :mit

  binary "mitmproxy-#{version}-osx/mitmproxy"
  binary "mitmproxy-#{version}-osx/mitmdump"
end

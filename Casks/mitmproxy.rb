cask :v1 => 'mitmproxy' do
  version '0.12.1'
  sha256 'c8bd02613bef8f02755a266208a6621b222fabb260dcb439fde62522efc1277e'

  url "https://mitmproxy.org/download/osx-mitmproxy-#{version}.tar.gz"
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'
  license :mit

  binary "osx-mitmproxy-#{version}/mitmproxy"
  binary "osx-mitmproxy-#{version}/mitmdump"
end

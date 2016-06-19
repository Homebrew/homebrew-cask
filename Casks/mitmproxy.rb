cask 'mitmproxy' do
  version '0.17.1'
  sha256 'dd5b2779f078c3208c02c673ee6343bf7aedf1c1759df20f8103241147d833ea'

  # github.com/mitmproxy/mitmproxy was verified as official when first introduced to the cask
  url "https://github.com/mitmproxy/mitmproxy/releases/download/v#{version}/mitmproxy-#{version}-osx.tar.gz"
  appcast 'https://github.com/mitmproxy/mitmproxy/releases.atom',
          checkpoint: 'ac84c6e953d3aa621858bde8ba3a0321e3f76b8faf4165f594d31515f2b8026e'
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'
  license :mit

  binary "mitmproxy-#{version}-osx/mitmproxy"
  binary "mitmproxy-#{version}-osx/mitmdump"
end

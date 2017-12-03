cask 'mitmproxy' do
  version '2.0.2'
  sha256 '3a2da116a28a1ea0218e4ddf156c9afbc0e1c44653d687a73b91e833e41e31ef'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/mitmproxy/mitmproxy/releases/download/v2.0.2/mitmproxy-#{version}-osx.tar.gz"
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'

  binary 'mitmproxy'
  binary 'mitmdump'
  binary 'mitmweb'
end

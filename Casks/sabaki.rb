cask 'sabaki' do
  version '0.31.0'
  sha256 '2ae60aa57937d6c2b96b2baea5af95bcabb3da90c39c7919dd904dcdce8824d9'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '2e751de9f01939d6afd6293bee5d3ab0fc952db21882e1ec7aaee22590a4a5b5'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

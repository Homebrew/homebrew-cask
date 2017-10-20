cask 'sabaki' do
  version '0.31.4'
  sha256 '55144a2704370ec70422b65c6f7f2ad18d800f15bb780e2a51937faee99cb35c'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '296fa5b54e34a05a333ba1b9214f74864d91a14ceada1421380d2a27d81c17e0'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

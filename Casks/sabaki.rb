cask 'sabaki' do
  version '0.31.2'
  sha256 'b99b480ede7bb352d12fd0789a791ffb691dcba435ee54203d1de3c766dfbf2c'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '98d940460e29b4092294cc759f5c917e51d474ee6ddd8a67ae7404400c05f6a0'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

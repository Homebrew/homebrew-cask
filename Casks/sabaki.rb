cask 'sabaki' do
  version '0.33.0'
  sha256 '14ad1b60711ec2a75f7fb5bc31b55c4dac403b62237bd8b3c9ad3e7dd779dcd9'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '61a1f211595fd8e596f7710307b79a03a31db5802a1aba2f8981c362c2a2999e'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

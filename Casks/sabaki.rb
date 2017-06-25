cask 'sabaki' do
  version '0.31.1'
  sha256 'c25e245dd68154e4c47e6db23908b98e4113720d200b825f64eb656fbe8f336a'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '4b128c81b2addc5ba26e3fd6d174abe5f4db05f41d693f3d77c88163c24b3c81'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

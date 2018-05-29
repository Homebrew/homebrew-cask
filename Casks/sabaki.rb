cask 'sabaki' do
  version '0.34.0'
  sha256 'c3bc2d5b1bbe3d737421b7e4b0e2044a347c9cf661183561675efbe5725119b2'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom',
          checkpoint: 'ac03cfc925224af1a2e28c82ae9649d8e3bc2eb8c2b9171b5e2c67adf884ebf1'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

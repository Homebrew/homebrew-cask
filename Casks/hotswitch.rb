cask 'hotswitch' do
  version '1.15'
  sha256 'fab59bf30318a49923b2a1633a3c50c17a459ed22d2d5511873198e4e0278dd0'

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  appcast 'https://github.com/oniatsu/HotSwitch/releases.atom',
          checkpoint: '290d7c77034a070f70dce271c24dc7085355f55ac03e38a6e4d6b4be52aba51b'
  name 'HotSwitch'
  homepage 'https://oniatsu.github.io/HotSwitch/'

  app 'HotSwitch.app'
end

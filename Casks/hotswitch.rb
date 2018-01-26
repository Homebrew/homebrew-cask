cask 'hotswitch' do
  version '1.16,2017-09-24 08-37-27'
  sha256 '2dd931790fc3d1a251be927c00056117d07149aae8dca596366921f01764bfbd'

  url 'https://oniatsu.github.io/HotSwitch/release/zip/HotSwitch.zip'
  appcast 'https://github.com/oniatsu/HotSwitch/releases.atom',
          checkpoint: 'c103e26742ccec3a0cfaaa2a24e667a62ecbfa5f5b3f3c5c38d06b875cc820dd'
  name 'HotSwitch'
  homepage 'https://oniatsu.github.io/HotSwitch/'

  app "HotSwitch #{version.after_comma}/HotSwitch.app"
end

cask 'mirador' do
  version '1.5.0'
  sha256 'bb65824a703a812b658f3956148500137be00de85e26d7045fdd5d10c998428f'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url "https://github.com/mirador/mirador/releases/download/latest-macos/mirador-#{version}-macos.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom',
          checkpoint: '6e4c5ccf5b625b75b1b525a2f4cc526cf3bdca22f2971033ce813a9499bf6d73'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end

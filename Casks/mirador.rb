cask 'mirador' do
  version '1.5.0'
  sha256 'bb65824a703a812b658f3956148500137be00de85e26d7045fdd5d10c998428f'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url "https://github.com/mirador/mirador/releases/download/latest-macos/mirador-#{version}-macos.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end

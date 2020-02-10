cask 'freeorion' do
  version '0.4.9,2020-02-02.db53471'
  sha256 'b90858dd1869166836e77497237b215609577247462b0a54def1e71425f694f7'

  # github.com/freeorion was verified as official when first introduced to the cask
  url "https://github.com/freeorion/freeorion/releases/download/v#{version.before_comma}/FreeOrion_v#{version.before_comma}_#{version.after_comma}_MacOSX_10.9.dmg"
  appcast 'https://github.com/freeorion/freeorion/releases.atom'
  name 'FreeOrion'
  homepage 'https://freeorion.org/'

  app 'FreeOrion.app'
end

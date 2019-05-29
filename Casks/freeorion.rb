cask 'freeorion' do
  version '0.4.8,2018-08-23.26f16b0'
  sha256 '075e8e3f8b3883a6e0b986a86327d70846d69d4c09fe6ad2f50f7d2582181d59'

  # github.com/freeorion was verified as official when first introduced to the cask
  url "https://github.com/freeorion/freeorion/releases/download/v#{version.before_comma}/FreeOrion_v#{version.before_comma}_#{version.after_comma}_MacOSX_10.9.dmg"
  appcast 'https://github.com/freeorion/freeorion/releases.atom'
  name 'FreeOrion'
  homepage 'https://freeorion.org/'

  app 'FreeOrion.app'
end

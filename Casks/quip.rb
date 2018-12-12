cask 'quip' do
  version '5.4.16'
  sha256 '4f6f0c351b366cc39af1189d0eb47441242f047c98690db0432cfc85eeb1fa96'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end

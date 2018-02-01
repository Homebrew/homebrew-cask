cask 'birdfont' do
  version '3.6.0'
  sha256 '77916c27719bc414b47e45d66a75292cf0280947f4b38611aa5f02f67266ecad'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end

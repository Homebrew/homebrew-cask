cask 'suitcase-fusion' do
  version '8,19.0.5'
  sha256 'c949d3f4b3a81eb4e07b1024e431f21479b75bc6b1997dd737b74f0e373a5437'

  url "https://bin.extensis.com/SuitcaseFusion#{version.before_comma}-M-#{version.after_comma.dots_to_hyphens}.dmg"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml",
          checkpoint: 'a0ddcb52e098bd5824c425379c5ccc486492b99de8582371425cef5b2960d9a1'
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  app 'Suitcase Fusion.app'
end

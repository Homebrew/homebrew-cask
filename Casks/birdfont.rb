cask 'birdfont' do
  version '2.18.3'
  sha256 'a3c20e3d53feda829e2a573b2a463488d601812e9119ce91828a6197efb3bf5f'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://github.com/johanmattssonm/birdfont/releases.atom',
          checkpoint: '470a4c4caa05c16e8432edb5b5d46d160326d22aa959a47dfd4cacd547187233'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end

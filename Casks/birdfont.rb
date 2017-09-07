cask 'birdfont' do
  version '2.18.5'
  sha256 'f023d17ebd5786a68dba306c2d32d6c5d463769fda8fbd0542e78c2d5258547f'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://github.com/johanmattssonm/birdfont/releases.atom',
          checkpoint: '141eddd0351e489949f929223cbfa4fd4ee90852875ce0c714727cb72013a65c'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end

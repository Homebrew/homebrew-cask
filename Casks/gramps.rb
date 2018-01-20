cask 'gramps' do
  version '4.2.6-1'
  sha256 'b38648187e2eae04d4e4012e64754c721960582118c05c4ae61726bafc1bad93'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: '381bfc19f192623005e03ce6a1b63e63bc3d7271c70d6b27c031ad3f287ab7b5'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end

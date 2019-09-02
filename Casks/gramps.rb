cask 'gramps' do
  version '5.1.0-1'
  sha256 '43941d4231ca0e2239b14a319edf5f1dc436a017563950c34e4f8a844da90923'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end

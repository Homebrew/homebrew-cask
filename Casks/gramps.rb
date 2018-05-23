cask 'gramps' do
  version '4.2.8-1'
  sha256 '0dcb09ec5d40c9e42b26223a30d74d57450572ececad8cb25a3d4ee8e1a3f80a'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: 'eda1607f53fd34ff0dc4e535158800f9d29831a3270f273fb4f280f476388cfb'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end

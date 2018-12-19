cask 'gramps' do
  version '5.0.0-2'
  sha256 '6a1c66361108b9a82d13138c440a518a34af105e336c7ef0c3716b36a53758ac'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end

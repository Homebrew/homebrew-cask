cask 'gramps' do
  version '5.0.2-3'
  sha256 '28e5f457d37f8b4ad738874b92a9edbfb1e92f4d44abc1229f42579b1aa233f1'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end

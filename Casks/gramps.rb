cask 'gramps' do
  version '5.1.1-1'
  sha256 '66398f859ef6e4be9fbe7c9970d69f778ba021f0a93ebbd483e26cdd1cb54418'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end

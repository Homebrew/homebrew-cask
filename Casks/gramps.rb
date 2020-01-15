cask 'gramps' do
  version '5.1.2,1'
  sha256 'a67c3f4e389dc0128697905ed4be20dfc6ad7790874f020e8bd471ff4f0e17eb'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.before_comma}/Gramps-Intel-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end

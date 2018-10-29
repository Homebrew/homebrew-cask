cask 'jasp' do
  version '0.9.1.0'
  sha256 'be683948a2797d17fdab4f6bd549999c7ba2aa2dd9cd5851baca5a4ed50c5005'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end

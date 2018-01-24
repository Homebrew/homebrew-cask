cask 'jasp' do
  version '0.8.5'
  sha256 '9787e4218e6c366516c05eee10066f70dae42d6c842f9e86e08e911d73a40229'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end

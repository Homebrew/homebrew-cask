cask 'jasp' do
  version '0.8.0.1'
  sha256 '9e75f0038a9374ccc7dd6b561a58a3fba567266cd4644fd86b51f3b4bd76c58c'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end

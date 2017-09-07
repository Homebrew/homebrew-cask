cask 'jasp' do
  version '0.8.1.2'
  sha256 '64803cce71189738eb658040d2d66920b06d10dff015374d7618f707b21c8356'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end

cask 'jasp' do
  version '0.9'
  sha256 '7f3af79237a55ab57f561b2480c87a0de39bcfa3f836c528037ea084c60e7e46'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end

cask 'simply-fortran' do
  version '2.40'
  sha256 '438be530ed56888c09ceee1f76f93124bf98fec8d0355766943eaf35d0a23523'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

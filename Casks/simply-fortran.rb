cask 'simply-fortran' do
  version '2.41'
  sha256 '1d8221da65505df95be74e1bee2899e9da67c6e155b3de1881469b1d3108764d'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

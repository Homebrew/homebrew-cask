cask 'simply-fortran' do
  version '2.41'
  sha256 '355340df3167b993807f90c8c3d51cec7eb1e246cadfe7377585fc3ab2c308a2'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

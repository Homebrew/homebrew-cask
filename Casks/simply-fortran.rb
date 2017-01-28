cask 'simply-fortran' do
  version '2.34'
  sha256 '2684e6b6b01e4d3dfb05a15beb8c1ff249a1d8237bba340f29774d6591087d65'

  # download.approximatrix.com/sfortran was verified as official when first introduced to the cask
  url "https://download.approximatrix.com/sfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

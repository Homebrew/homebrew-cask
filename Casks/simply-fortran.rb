cask 'simply-fortran' do
  version '3.7.3131'
  sha256 '4c106a3366b9ecdc156beb474aeb3c3be74a1dbc9a6cada7e0e996b20066b5cb'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version.major_minor}/simplyfortran-#{version}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

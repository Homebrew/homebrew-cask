cask 'simply-fortran' do
  version '3.5'
  sha256 'e30656095150f891a9a722a2863f0f862547c00ff8790048291092aff65ab781'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version}/SimplyFortran-#{version}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos'
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

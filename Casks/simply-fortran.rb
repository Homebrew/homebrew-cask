cask 'simply-fortran' do
  version '3.5'
  sha256 '44019d9e98c36f5ddfe7f25ab7073007f69dd277e8a84999499844720b6f05db'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version}/SimplyFortran-#{version}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos'
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

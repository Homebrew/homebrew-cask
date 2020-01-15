cask 'simply-fortran' do
  version '3.8.3148'
  sha256 '9c8ae9916d276632365a52659346fce7b9100aff754d189de6bd4770194f86a7'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version.major_minor}/simplyfortran-#{version}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

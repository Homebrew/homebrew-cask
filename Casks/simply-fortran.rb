cask 'simply-fortran' do
  version '3.6.3116'
  sha256 '9c3a9d94f76fdc55d724ed3f87e4798508665cddb730aeaf496b0c3b98bf6b65'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version.major_minor}/simplyfortran-#{version}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

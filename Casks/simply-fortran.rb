cask 'simply-fortran' do
  version '3.5.3103'
  sha256 'a848a36b62667dbb612a668a0e43e0e527baab4dc7340c1455320b4054bc4808'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "http://download.approximatrix.com/simplyfortran/#{version.major_minor}/SimplyFortran-#{version.major_minor}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

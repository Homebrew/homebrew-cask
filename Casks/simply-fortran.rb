cask 'simply-fortran' do
  version '3.9.3177'
  sha256 'a065bcd451ae10556099bb1bd6847f366483448f3c2cd6521bf97c1a9418d0ed'

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

cask 'simply-fortran' do
  version '3.11.3230'

  if MacOS.version <= :mojave
    sha256 '88e0c516534aa344b31eb2beba99df48a7ddabde6a819da3acc29130ef3befd7'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 '370fec665d116014235998085ddc6b4d9a068c2443c91eeb7b2cc1c34448464e'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

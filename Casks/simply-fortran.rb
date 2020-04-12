cask 'simply-fortran' do
  version '3.11.3231'

  if MacOS.version <= :mojave
    sha256 '88e0c516534aa344b31eb2beba99df48a7ddabde6a819da3acc29130ef3befd7'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 'dd390a2edd4c2c029872c48bd29fc7cf9a7d3ece7e71623566f1db9cbbff4a11'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

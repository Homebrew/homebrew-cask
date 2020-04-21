cask 'simply-fortran' do
  version '3.11.3231'

  if MacOS.version <= :mojave
    sha256 '753e3435c5311bb61edc422f7fe909ab608e38a1259b7a88a3397a3393c96fe9'
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

cask 'simply-fortran' do
  version '3.11.3243'

  if MacOS.version <= :mojave
    sha256 '2caf325823c2bf15fb79946c1ff616551754677cf29f82e98de331845cf3e8f6'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 'a3ccac705d29a303fa6cb5e94ea704cd802926e878c56a7c2396c649a0689e5b'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

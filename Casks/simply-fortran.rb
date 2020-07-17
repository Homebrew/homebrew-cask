cask 'simply-fortran' do
  version '3.13.3319'

  if MacOS.version <= :mojave
    sha256 '8a1c41eb2d71d4a0db5c75616f3b760cd7ee80021d586fbc83b30b48e7dbad05'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 '76a41784bff0ba4e893bcd82fa7b90a322c239ec44276b4a5f540f85fdf13396'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast 'https://simplyfortran.com/download/?platform=macos',
          must_contain: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

cask 'simply-fortran' do
  if MacOS.version <= :mojave
    version '3.10.3203'
    sha256 '0defa65f462ba128fd2cb61930e2cccc65715f42d67c3b5c8934bf9b29908dc6'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    version '3.10.3202'
    sha256 '7e25db1861956338d52a733ff10a5e3dda979fd5bf180485cbb06c9e18c86df7'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end

  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

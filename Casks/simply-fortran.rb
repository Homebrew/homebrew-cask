cask 'simply-fortran' do
  if MacOS.version <= :mojave
    version '3.12.3271'

    sha256 'ebe257a6715fae7869b16a435547679a74b65fb2af8767c32a687262535e7d4c'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    version '3.12.3272'

    sha256 '99e461f76eeb8ab39425efbd6a63332bcf136117c5cdad9abaf46e9a94a6a929'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast 'https://simplyfortran.com/download/?platform=macos',
          must_contain: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

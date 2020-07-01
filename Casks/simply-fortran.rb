cask 'simply-fortran' do
  version '3.13.3306'

  if MacOS.version <= :mojave
    sha256 'a4f2edeb46c64371dc6ddb3bdb7b7b4ef0a559f8c0f399be15147474debf211a'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 '1eaf8b58f75212b38a58f5f11ed911ce5fe73dceb6df7f7ec04573134426752f'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast 'https://simplyfortran.com/download/?platform=macos',
          must_contain: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

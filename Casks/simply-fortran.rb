cask 'simply-fortran' do
  version '3.11.3246'

  if MacOS.version <= :mojave
    sha256 '1dba2f0a93a73d82746d24dbdc96c1608eee63ae9804c2074d79fd8da5ee896c'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 '1cfb14090294d20ab5ce9a163a4f81753831b468a32faa295e935813fb61e51c'
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end

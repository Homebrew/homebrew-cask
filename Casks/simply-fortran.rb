cask "simply-fortran" do
  version "3.14.3344"

  if MacOS.version <= :mojave
    sha256 "c474feb026e4250b0a2a6f01d925605ea902b340b37515c3586fb6da5c183319"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 "5c4d1711a07f983d09b5cdb721de4538ca03e432c83a7e0d1b0c45afc8874ffb"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast "https://simplyfortran.com/download/?platform=macos",
          must_contain: version.major_minor
  name "Simply Fortran"
  homepage "https://simplyfortran.com/"

  app "Simply Fortran.app"
end

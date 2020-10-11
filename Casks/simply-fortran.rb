cask "simply-fortran" do
  version "3.15.3375"

  if MacOS.version <= :mojave
    sha256 "84eb3a7030f2174809c0727bb92a0681ca5f9f65be05c40ef24cbdcfbfc7ba2a"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 "a9116fba5a1350a3c742ca710c3311aee784a87926dea41982199b479b5d7c46"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast "https://simplyfortran.com/download/?platform=macos",
          must_contain: version.major_minor
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  app "Simply Fortran.app"
end

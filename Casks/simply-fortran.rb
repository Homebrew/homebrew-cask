cask "simply-fortran" do
  version "3.15.3373"

  if MacOS.version <= :mojave
    sha256 "7fed2d132c3bc69eebfc11c13074f4bedb58ac28ecd67aef5703a3a0e58a1fcb"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 "0917e11e783e4e6b36ca29eed551724d716637c6f1cf733273bb541c740cc3d9"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast "https://simplyfortran.com/download/?platform=macos",
          must_contain: version.major_minor
  name "Simply Fortran"
  homepage "https://simplyfortran.com/"

  app "Simply Fortran.app"
end

cask "simply-fortran" do
  if MacOS.version <= :mojave
    version "3.15.3382"

    sha256 "45441f0f222822af0a03dcb3da898f07252f739d71a88d534af5dd5f459f8da5"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    version "3.15.3384"

    sha256 "b9f5e479097643089b5a6999498d3bafbea2f682e5fb8a73fa7d1d11e1dfdf16"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast "https://simplyfortran.com/download/?platform=macos",
          must_contain: version.major_minor
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  app "Simply Fortran.app"
end

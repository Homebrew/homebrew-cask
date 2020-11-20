cask "simply-fortran" do
  version "3.15.3382"

  if MacOS.version <= :mojave
    sha256 "45441f0f222822af0a03dcb3da898f07252f739d71a88d534af5dd5f459f8da5"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.legacy.dmg"
  else
    sha256 "df2bbf66ca32781ff965b48e1f9f8b60aab53460dc7bcf81cbb1ef5f06277839"
    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}.dmg"
  end
  appcast "https://simplyfortran.com/download/?platform=macos",
          must_contain: version.major_minor
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  app "Simply Fortran.app"
end

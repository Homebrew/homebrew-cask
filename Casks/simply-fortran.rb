cask "simply-fortran" do
  url_string = if MacOS.version <= :big_sur
    "-x86_64.legacy"
  else
    Hardware::CPU.intel? ? "-x86_64" : "-arm64"
  end

  version "3.25.3757"

  if MacOS.version <= :big_sur
    sha256 "eefcde488f42eaed99dd64215b7ec05bb2daf6c824418cede10c63a74128a220"
  elsif Hardware::CPU.intel?
    sha256 "cd177191c7a96d59c0e9c3bb271808a2b471d1001fca17b85cb420aaf55ee05a"
  else
    sha256 "de1c523a1c4a2d2be2623eaa89b117ddca4bbd7edacdda6830e930d2463a3208"
  end

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}#{url_string}.dmg"
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  livecheck do
    url "https://simplyfortran.com/download/?platform=macos"
    regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)#{url_string}\.dmg/i)
  end

  app "Simply Fortran.app"
end

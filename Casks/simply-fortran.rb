cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  version "3.25.3757"
  sha256 arm:   "de1c523a1c4a2d2be2623eaa89b117ddca4bbd7edacdda6830e930d2463a3208",
         intel: "cd177191c7a96d59c0e9c3bb271808a2b471d1001fca17b85cb420aaf55ee05a"

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}#{arch}.dmg"

  on_intel do
    on_big_sur :or_older do
      sha256 "0975462a1593bdc976dc87d6a9da88b97d8268a1a97caebeefd359e56ef73195"

      url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.legacy.dmg"
    end
  end

  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  livecheck do
    url "https://simplyfortran.com/download/?platform=macos"
    regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  app "Simply Fortran.app"
end

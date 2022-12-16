cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  if MacOS.version <= :big_sur
    version "3.25.3757"
    sha256 "0975462a1593bdc976dc87d6a9da88b97d8268a1a97caebeefd359e56ef73195"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.legacy.dmg"

    livecheck do
      skip "Legacy version"
    end
  else
    version "3.26.3806"
    sha256 arm:   "886dd1432bf070be8c4ba87e1585962ff3ca480b93797674c7886bf557c8867b",
           intel: "95f4f0fdd2926e7cc5f0b81538ceb35c31f01cd65f72d5705ebcb0e8ef1f2bbd"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}#{arch}.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    end
  end

  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  app "Simply Fortran.app"
end

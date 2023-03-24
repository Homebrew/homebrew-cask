cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  on_big_sur :or_older do
    version "3.25.3757"
    sha256 "0975462a1593bdc976dc87d6a9da88b97d8268a1a97caebeefd359e56ef73195"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.legacy.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "3.28.3890"
    sha256 arm:   "f3147fcaf7f0de6f2eb710559e0d1b19d2a9f0af8c0153aba51333fbf8fb98c4",
           intel: "8e7925c5a2005344b5e9f18c8012a310d4617584777d6697aed0590ead4880ab"

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

  zap trash: [
    "~/Library/Saved Application State/com.approximatrix.simplyfortran.savedState",
  ]
end

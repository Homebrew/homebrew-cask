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
    version "3.29.3908"
    sha256 arm:   "18d0af63b55332db7e124932b827e0adcee7231e94a7afd35fbba403a4fce66b",
           intel: "b3d89ab70fa5397c010c96c885cef38ee5e96e3d32cd1e879aa1ddc361574e4f"

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
    "~/.simplyfortran",
    "~/Library/Caches/com.apple.helpd/Generated/com.approximatrix.simplyfortran.help*3.29",
    "~/Library/Saved Application State/com.approximatrix.simplyfortran.savedState",
  ]
end

cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  on_big_sur :or_older do
    version "3.34.4182"
    sha256 "5170a54ebd982a3fa0c34c2dab6d25ae1eba524b1cd93a597e183e37e9701c7a"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.legacy.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    on_arm do
      version "3.34.4182"
      sha256 "e235a5cfa09f507d2625140d78f6fe574c1dc55937024c923906191174e8effc"
    end
    on_intel do
      version "3.34.4182"
      sha256 "d37d6b0790f53d756b2a13ccebf8518a547dd451ac2f95fa3ce42abc2d9e53aa"
    end

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
    "~/Library/Caches/com.apple.helpd/Generated/com.approximatrix.simplyfortran.help*",
    "~/Library/Saved Application State/com.approximatrix.simplyfortran.savedState",
  ]
end

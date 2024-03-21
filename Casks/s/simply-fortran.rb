cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  on_big_sur :or_older do
    version "3.34.4154"
    sha256 "676f096f8ee509252023bcd3eafd99897bf079e87ebd3ffd2f41dfad6b45f273"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.legacy.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    on_arm do
      version "3.32.4016"
      sha256 "11d513fc26c367869e678e3a46f5ec80bae8e55747c1331c46c022deb388937e"
    end
    on_intel do
      version "3.34.4154"
      sha256 "ee48deb9308b68df1ff65d86d6f1df37d5c46bdd40f8ccd1ebe27677bc9b2a27"
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

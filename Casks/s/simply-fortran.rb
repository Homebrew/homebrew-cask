cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  version "3.35.4216"

  on_big_sur :or_older do
    sha256 "eebe9337898adfd4a27c628e67395f9a84fad977276ac99dfea8c29093163f69"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.legacy.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.legacy\.dmg/i)
    end
  end
  on_monterey do
    sha256 "074021b2faeeaf7a737ff9f5b0dfef2b43b6265968f862a6ee4e648f5e4f91c5"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.dmg/i)
    end
  end
  on_ventura do
    sha256 "074021b2faeeaf7a737ff9f5b0dfef2b43b6265968f862a6ee4e648f5e4f91c5"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.dmg/i)
    end
  end
  on_sonoma :or_newer do
    sha256 arm:   "c600ddf0e38bbb643d63e06982c223edb989a78d010d72a1b05872976a334a12",
           intel: "074021b2faeeaf7a737ff9f5b0dfef2b43b6265968f862a6ee4e648f5e4f91c5"

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

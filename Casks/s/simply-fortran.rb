cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  version "3.37.4295"

  on_big_sur :or_older do
    sha256 "df06532257e59782b5d3ef99ef8b2a1e64cc3af9a8cd0fbab3be543f2859f644"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.legacy.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.legacy\.dmg/i)
    end

    caveats do
      requires_rosetta
    end
  end
  on_monterey do
    sha256 "bd3c2705ece3e91c06484231061ee641a887bc560251bfc7afd11678fd043152"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.dmg/i)
    end

    caveats do
      requires_rosetta
    end
  end
  on_ventura do
    sha256 "bd3c2705ece3e91c06484231061ee641a887bc560251bfc7afd11678fd043152"

    url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-x86_64.dmg"

    livecheck do
      url "https://simplyfortran.com/download/?platform=macos"
      regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.dmg/i)
    end

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    sha256 arm:   "49df4b3e13d105dc788c330e52eccc29676722c42edb3a21690281f6d81c63c6",
           intel: "bd3c2705ece3e91c06484231061ee641a887bc560251bfc7afd11678fd043152"

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

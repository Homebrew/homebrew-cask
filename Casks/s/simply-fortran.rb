cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  version "3.38.4336"

  on_big_sur :or_older do
    sha256 "50ad3792ea1db61bed86e86181101e482ee86dbf3422fe0ec56b15f12813d6c8"

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
    sha256 "bbae48d7040d5f83cc4957fbdb5d0079f5a8c31b5d841f12d5fa66b3f710bd4c"

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
    sha256 "bbae48d7040d5f83cc4957fbdb5d0079f5a8c31b5d841f12d5fa66b3f710bd4c"

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
    sha256 arm:   "b6a779b62eec58edbdcc2c7aaead2848abc561c1c7bffb184c0857b75068eecd",
           intel: "bbae48d7040d5f83cc4957fbdb5d0079f5a8c31b5d841f12d5fa66b3f710bd4c"

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

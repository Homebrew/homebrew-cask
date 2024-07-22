cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  version "3.35.4226"

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
    sha256 "4cdf8695bb1dc96c754f96f8da2c956cdf259fc27dcf616701a908cbcd2f3a5b"

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
    sha256 "4cdf8695bb1dc96c754f96f8da2c956cdf259fc27dcf616701a908cbcd2f3a5b"

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
    sha256 arm:   "0a34afc0c46a14039a4f4b0728a096e471fd28360da3845dffd06d922eae75e4",
           intel: "4cdf8695bb1dc96c754f96f8da2c956cdf259fc27dcf616701a908cbcd2f3a5b"

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

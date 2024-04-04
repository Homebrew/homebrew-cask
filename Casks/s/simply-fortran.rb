cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  on_big_sur :or_older do
    version "3.34.4166"
    sha256 "d623e96c544c173978a28fa60702a2ee0f42ea3344932139e4528df03f0bc7d7"

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
      version "3.34.4166"
      sha256 "5f51dc383b9c22f5564e31f119eed40ef2005a2490173a9f5895528c1c3a20a4"
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

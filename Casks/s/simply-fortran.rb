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
    on_arm do
      version "3.32.4016"
      sha256 "11d513fc26c367869e678e3a46f5ec80bae8e55747c1331c46c022deb388937e"
    end
    on_intel do
      version "3.33.4066"
      sha256 "3269ce4f7c38951d4b4d212332ee4fffe3eb41fbbe0497e51312b420ee797ef1"
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

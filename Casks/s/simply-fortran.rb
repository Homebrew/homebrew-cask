cask "simply-fortran" do
  arch arm: "-arm64", intel: "-x86_64"

  version "3.40.4414"

  on_big_sur :or_older do
    sha256 "48805a40ea00d4ba2576b576cac532df8c2b34717a1852538c5df30572c2521f"

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
    sha256 "660a6235f565800790e3e8d78c5b8d89a2924ec31b0003fb2ddd577356ee6c07"

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
    sha256 "660a6235f565800790e3e8d78c5b8d89a2924ec31b0003fb2ddd577356ee6c07"

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
    sha256 arm:   "3f138e8fbc65e3ca3535bcaaadfee4a707561e28e7d7dcb630af6ec959ed6427",
           intel: "660a6235f565800790e3e8d78c5b8d89a2924ec31b0003fb2ddd577356ee6c07"

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

cask "simply-fortran" do
  on_big_sur :or_older do
    arch arm: "x86_64.legacy", intel: "x86_64.legacy"

    version "3.40.4428"
    sha256 "0239df2a164c26f50b5a5226a1ae375c703beb759f44bfb02d7a5575e59e170c"

    caveats do
      requires_rosetta
    end
  end
  on_monterey :or_newer do
    on_ventura :or_older do
      arch arm: "x86_64", intel: "x86_64"

      version "3.40.4427"
      sha256 "d03a9976cbf63f3fe313e372272bb512e6b6cbef7432e43cfa66034a522909fd"

      caveats do
        requires_rosetta
      end
    end
  end
  on_sonoma :or_newer do
    arch arm: "arm64", intel: "x86_64"

    version "3.40.4427"
    sha256 arm:   "f0b099c692601e35213cf8604eaf303e9d10bc21ef097e491e9e2eb7a9e76a89",
           intel: "d03a9976cbf63f3fe313e372272bb512e6b6cbef7432e43cfa66034a522909fd"
  end

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-#{arch}.dmg"
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  livecheck do
    url "https://simplyfortran.com/download/?platform=macos"
    regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  no_autobump! because: :requires_manual_review

  app "Simply Fortran.app"

  zap trash: [
    "~/.simplyfortran",
    "~/Library/Caches/com.apple.helpd/Generated/com.approximatrix.simplyfortran.help*",
    "~/Library/Saved Application State/com.approximatrix.simplyfortran.savedState",
  ]
end

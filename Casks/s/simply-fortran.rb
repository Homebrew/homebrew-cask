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

      version "3.41.4435"
      sha256 "21d49f3bfbaa2d525c7f8e09f11b6d72d06ffb5fab1094b11d47492a8bb25f65"

      caveats do
        requires_rosetta
      end
    end
  end
  on_sonoma :or_newer do
    arch arm: "arm64", intel: "x86_64"

    version "3.41.4435"
    sha256 arm:   "0c5fc357519220b745c078bba688fecedb5f21f97cce328c7105d5f5ba0cbd2f",
           intel: "21d49f3bfbaa2d525c7f8e09f11b6d72d06ffb5fab1094b11d47492a8bb25f65"
  end

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-#{arch}.dmg"
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  livecheck do
    url "https://simplyfortran.com/download/?platform=macos"
    regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Simply Fortran.app"

  zap trash: [
    "~/.simplyfortran",
    "~/Library/Caches/com.apple.helpd/Generated/com.approximatrix.simplyfortran.help*",
    "~/Library/Saved Application State/com.approximatrix.simplyfortran.savedState",
  ]
end

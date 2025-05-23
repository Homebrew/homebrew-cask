cask "simply-fortran" do
  version "3.40.4424"

  on_big_sur :or_older do
    arch arm: "x86_64.legacy", intel: "x86_64.legacy"

    sha256 "b326cc151fa7d2b896f5aa5d08e8d1768638ced2f511d0f251d2cbeda6797607"

    caveats do
      requires_rosetta
    end
  end
  on_monterey :or_newer do
    on_ventura :or_older do
      arch arm: "x86_64", intel: "x86_64"

      sha256 "f711ba2e206b7ff4944319da2b5e98a1f48112ef26d474cb01cd59ffcacb5def"

      caveats do
        requires_rosetta
      end
    end
  end
  on_sonoma :or_newer do
    arch arm: "arm64", intel: "x86_64"

    sha256 arm:   "aa40ad159edb13a54478f611050d852d92eb8c912dae0e26c7fe51b0e0770e67",
           intel: "f711ba2e206b7ff4944319da2b5e98a1f48112ef26d474cb01cd59ffcacb5def"
  end

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}-#{arch}.dmg"
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  livecheck do
    url "https://simplyfortran.com/download/?platform=macos"
    regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Simply Fortran.app"

  zap trash: [
    "~/.simplyfortran",
    "~/Library/Caches/com.apple.helpd/Generated/com.approximatrix.simplyfortran.help*",
    "~/Library/Saved Application State/com.approximatrix.simplyfortran.savedState",
  ]
end

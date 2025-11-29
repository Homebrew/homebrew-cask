cask "simply-fortran" do
  on_arm do
    on_monterey do
      arch arm: "x86_64"

      version "3.41.4440"
      sha256 "a0a1e11971ded71a3ecbb19ff990afd2fbda56cd4b8b9770fb5ec98025667d39"

      caveats do
        requires_rosetta
      end
    end
    on_ventura do
      arch arm: "x86_64"

      version "3.41.4440"
      sha256 "a0a1e11971ded71a3ecbb19ff990afd2fbda56cd4b8b9770fb5ec98025667d39"

      caveats do
        requires_rosetta
      end
    end
    on_sonoma :or_newer do
      arch arm: "arm64"

      version "3.41.4440"
      sha256 "a0a1e11971ded71a3ecbb19ff990afd2fbda56cd4b8b9770fb5ec98025667d39"
    end
  end
  on_intel do
    on_monterey :or_newer do
      arch intel: "x86_64"

      version "3.41.4440"
      sha256 "d4703b0d77e751a67beb261d208355ebeb76c6611605a99d44c88fa5807bef5a"
    end
  end
  on_big_sur :or_older do
    arch arm: "x86_64.legacy", intel: "x86_64.legacy"

    version "3.40.4428"
    sha256 "0239df2a164c26f50b5a5226a1ae375c703beb759f44bfb02d7a5575e59e170c"

    caveats do
      requires_rosetta
    end
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

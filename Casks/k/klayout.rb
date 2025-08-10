cask "klayout" do
  on_monterey :or_older do
    on_catalina :or_older do
      version "0.27.13"
      sha256 "25d38cba66f4009f8ed19a755ec73863721a6f2e3b2d57257f077bf71ec5beba"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
          verified: "klayout.org/downloads/MacOS/"
    end
    on_big_sur do
      version "0.27.13"
      sha256 "d0216355390d83954611461ecd93d7cab0a819f7b0f98327b1c42d92da022fa7"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
          verified: "klayout.org/downloads/MacOS/"
    end
    on_monterey do
      version "0.29.6"
      sha256 "2c324dc95d77a0167d6c56608d2beca5f78b5190259480d97ef1500b19bc7389"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5MP-RsysPhb311.dmg",
          verified: "klayout.org/downloads/MacOS/"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura do
    version "0.30.3"
    sha256 "79a57958e8766e46ecf22b01f27540b81c0d1c5ce5a8ad95c33c6950852d4414"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Ventura-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Ventura.*?\.dmg/i)
    end
  end
  on_sonoma do
    version "0.30.3"
    sha256 "160940c39d36d2591ca775106fba7ab461405d869d514b97eafa69c37c7c4d68"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sonoma-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sonoma.*?\.dmg/i)
    end
  end
  on_sequoia :or_newer do
    version "0.30.3"
    sha256 "2b581b90909f341caf62adc7905dc5775343b946b09b98494707b6b9205a541e"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sequoia-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sequoia.*?\.dmg/i)
    end
  end

  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  depends_on macos: ">= :catalina"

  suite "KLayout"

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("KLayout").tap(&:mkpath))
  end

  uninstall quit:    "klayout.de",
            pkgutil: "klayout.de"

  zap trash: "~/.klayout"
end

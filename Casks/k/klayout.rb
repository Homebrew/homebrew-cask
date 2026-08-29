cask "klayout" do
  on_ventura :or_older do
    on_big_sur :or_older do
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
    on_ventura do
      version "0.30.4"
      sha256 "5c432cecff49a27cbad8097bcf6a3169bebfec32ce87b13e92af19440b4a87f7"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Ventura-1-qt5MP-RsysPhb311.dmg",
          verified: "klayout.org/downloads/MacOS/"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma do
    version "0.30.10"
    sha256 "6c51fe01c9c4d6ef0b52e7df534403b131ae1e8be330993f04baa007beb3788a"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sonoma-C32-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sonoma.*?\.dmg/i)
    end
  end
  on_sequoia do
    version "0.30.10"
    sha256 "65bb64339cc9a1b53b0329656182bcd359ca3958efededfe133b71ce93301412"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sequoia-C32-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sequoia.*?\.dmg/i)
    end
  end
  on_tahoe :or_newer do
    on_arm do
      version "0.30.10"
      sha256 "903d44aa707a38cfc464d43b3f26b59be6ef27c84b5289b6ecbd155a5b02e827"

      url "https://www.klayout.org/downloads/MacOS/ARM64/arm64ST-klayout-#{version}-macOS-Tahoe-C32-1-qt5MP-RsysPsys.dmg",
          verified: "klayout.org/downloads/MacOS/ARM64/"

      livecheck do
        url "https://www.klayout.de/build.html"
        regex(/href=.*?arm64ST[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Tahoe.*?\.dmg/i)
      end
    end
    on_intel do
      version "0.30.10"
      sha256 "65bb64339cc9a1b53b0329656182bcd359ca3958efededfe133b71ce93301412"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sequoia-C32-1-qt5MP-RsysPhb311.dmg",
          verified: "klayout.org/downloads/MacOS/"

      livecheck do
        url "https://www.klayout.de/build.html"
        regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sequoia.*?\.dmg/i)
      end
    end
  end

  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  depends_on :macos

  suite "KLayout"

  preflight_steps do
    # There is no sub-folder in the DMG; the root *is* the folder
    move_contents ".", "KLayout"
  end

  uninstall quit:    "klayout.de",
            pkgutil: "klayout.de"

  zap trash: "~/.klayout"
end

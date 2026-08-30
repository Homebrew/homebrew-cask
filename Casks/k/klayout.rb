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
    version "0.30.12"
    sha256 "911bd07c1a9926247c18e59627b20408d05ff04666fb277372130a061a56339d"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sonoma-C32-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sonoma.*?\.dmg/i)
    end
  end
  on_sequoia do
    version "0.30.12"
    sha256 "8c4ec9066844b16170d3781aca0433c194c937ce13806a678bb3c71c20cfd887"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sequoia-C32-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sequoia.*?\.dmg/i)
    end
  end
  on_tahoe :or_newer do
    on_arm do
      version "0.30.12"
      sha256 "1acbaf5f0863f77ef76921fb213696d7c0c1b65284ddf7cf6057b1b1d048f468"

      url "https://www.klayout.org/downloads/MacOS/ARM64/arm64ST-klayout-#{version}-macOS-Tahoe-C32-1-qt5MP-RsysPsys.dmg",
          verified: "klayout.org/downloads/MacOS/ARM64/"

      livecheck do
        url "https://www.klayout.de/build.html"
        regex(/href=.*?arm64ST[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Tahoe.*?\.dmg/i)
      end
    end
    on_intel do
      version "0.30.12"
      sha256 "8c4ec9066844b16170d3781aca0433c194c937ce13806a678bb3c71c20cfd887"

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

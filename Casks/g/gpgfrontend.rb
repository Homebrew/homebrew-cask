cask "gpgfrontend" do
  macos_version = nil

  on_arm do
    on_ventura :or_older do
      macos_version = "13"

      version "2.1.10"
      sha256 "f611956a9b3d7b8a2dfda11a93ebe10ef64100e144890df5efcbd61a4aeb5a37"

      livecheck do
        skip "Legacy version"
      end

      caveats do
        requires_rosetta
      end
    end
    on_sonoma do
      macos_version = "14"

      version "2.2.1"
      sha256 "b263c1e6576a3ec06e38379f433cbc1a86c99bcadd96214ba4ed96fd9f699873"

      livecheck do
        skip "Legacy version"
      end
    end
    on_sequoia :or_newer do
      version "2.2.3"

      on_sequoia do
        macos_version = "15"

        sha256 "8fb4984a229d4c733360f0532781d27419f26808b64b1d71242ba1bb05f09134"
      end
      on_tahoe :or_newer do
        macos_version = "26"

        sha256 "6f097cb7a681b8a2d2395f0c4676bfbe1220d4fefcd5e16ed92becb004a2d163"
      end
    end
  end
  on_intel do
    on_sonoma :or_older do
      macos_version = "13"

      version "2.1.10"
      sha256 "f611956a9b3d7b8a2dfda11a93ebe10ef64100e144890df5efcbd61a4aeb5a37"

      livecheck do
        skip "Legacy version"
      end
    end
    on_sequoia :or_newer do
      version "2.2.3"

      on_sequoia do
        macos_version = "15-intel"

        sha256 "251f736c1658a30e2f66adf4122de73e43a14d4b32e69c9e2a998c990604fc09"
      end
      on_tahoe :or_newer do
        macos_version = "26-intel"

        sha256 "e46edda518488031939c7d35f9eb9105d213f1e3eb26291e0962fec26ca0157b"
      end
    end
  end

  url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-#{macos_version}.dmg"
  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.bktus.com/"

  depends_on formula: "gnupg"
  depends_on macos: :ventura

  app "GpgFrontend.app"

  uninstall quit: "com.bktus.gpgfrontend"

  zap trash: [
    "~/Library/Application Scripts/pub.gpgfrontend.gpgfrontend",
    "~/Library/Application Support/GpgFrontend",
    "~/Library/Containers/pub.gpgfrontend.gpgfrontend",
    "~/Library/Preferences/com.bktus.gpgfrontend.GpgFrontend.plist",
    "~/Library/Preferences/com.bktus.GpgFrontend.plist",
    "~/Library/Preferences/GpgFrontend",
    "~/Library/Preferences/GpgFrontend.plist",
    "~/Library/Preferences/pub.gpgfrontend.gpgfrontend.plist",
    "~/Library/Saved Application State/pub.gpgfrontend.gpgfrontend.savedState",
  ]
end

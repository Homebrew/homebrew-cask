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
      version "2.2.4"

      on_sequoia do
        macos_version = "15"

        sha256 "8a4b936143e566a90f5f58177436b1ff9de28854f341a3b3791ac3ac2c9a8155"
      end
      on_tahoe :or_newer do
        macos_version = "26"

        sha256 "adb87710c4aa110402905807f02d312e196bc288f9ff0928ea457b37882546f5"
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
      version "2.2.4"

      on_sequoia do
        macos_version = "15-intel"

        sha256 "80fda74cb371e881c014b62384de7b4132bf6183db387adf5accf0090f62d152"
      end
      on_tahoe :or_newer do
        macos_version = "26-intel"

        sha256 "c6561ea36f09ade34868f80820a885dd5827581ff49db033f7b51fd9ff4b0182"
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

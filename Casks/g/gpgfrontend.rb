cask "gpgfrontend" do
  macos_version = nil

  on_ventura :or_older do
    on_monterey :or_older do
      macos_version = 12

      version "2.1.5"
      sha256 "731acf48fea4fed6fc4a0065b8e50655e8cff911c62e31f1fc5f4b8c2b478db2"

      livecheck do
        skip "Legacy version"
      end
    end
    on_ventura do
      macos_version = 13

      version "2.1.10"
      sha256 "f611956a9b3d7b8a2dfda11a93ebe10ef64100e144890df5efcbd61a4aeb5a37"
    end

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    version "2.1.10"

    on_arm do
      on_sonoma do
        macos_version = 14

        sha256 "ae8af5945ac28ec214cb1eee8ae9e034de24f7e4519d5e6bce22bde17a983393"
      end
      on_sequoia :or_newer do
        macos_version = 15

        sha256 "28b05ae0b5e013e3de3d47006a1557d52557d09234313c586c3e4b2dd9ffa0a1"
      end
    end
    on_intel do
      macos_version = 13

      sha256 "f611956a9b3d7b8a2dfda11a93ebe10ef64100e144890df5efcbd61a4aeb5a37"
    end
  end

  url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-#{macos_version}.dmg",
      verified: "github.com/saturneric/GpgFrontend/"
  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.bktus.com/"

  depends_on formula: "gnupg"
  depends_on macos: ">= :monterey"

  app "GpgFrontend.app"

  zap trash: [
    "~/Library/Application Scripts/pub.gpgfrontend.gpgfrontend",
    "~/Library/Application Support/GpgFrontend",
    "~/Library/Containers/pub.gpgfrontend.gpgfrontend",
    "~/Library/Preferences/GpgFrontend",
    "~/Library/Preferences/GpgFrontend.plist",
    "~/Library/Preferences/pub.gpgfrontend.gpgfrontend.plist",
    "~/Library/Saved Application State/pub.gpgfrontend.gpgfrontend.savedState",
  ]
end

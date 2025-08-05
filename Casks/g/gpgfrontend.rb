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

      version "2.1.9"
      sha256 "27a722e234b1b4f0e3e64d73043ae57a7596032a1c1c2d547ddc2c187079ea71"
    end

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    version "2.1.9"

    on_arm do
      on_sonoma do
        macos_version = 14

        sha256 "a5abae74ce37b8572a6b16e47b84de53d68386dee6f9e1b67ea60a65a3a5fc07"
      end
      on_sequoia :or_newer do
        macos_version = 15

        sha256 "9267fec46a53a4257a2e9030a23e934d3fa5d6b6c55e6b426f13a1ae41a4c586"
      end
    end
    on_intel do
      macos_version = 13

      sha256 "27a722e234b1b4f0e3e64d73043ae57a7596032a1c1c2d547ddc2c187079ea71"
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

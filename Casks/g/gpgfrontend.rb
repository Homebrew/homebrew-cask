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
    on_sonoma :or_newer do
      version "2.2.1"

      on_sonoma do
        macos_version = "14"

        sha256 "b263c1e6576a3ec06e38379f433cbc1a86c99bcadd96214ba4ed96fd9f699873"
      end
      on_sequoia do
        macos_version = "15"

        sha256 "8b2999d223ca7c35691ece6a3eb80a6822f35ba9c29e60ba91f2d573885d17d8"
      end
      on_tahoe :or_newer do
        macos_version = "26"

        sha256 "4ef0ba76b0d0eae19be45efc3df53b8dcd3bfa5019cc436e160adb792660b554"
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
      macos_version = "15-intel"

      version "2.2.1"
      sha256 "a174f0da40e53c49b6d9d2f9ec7fb28edce3831d9beed4bfd3453c1ac4bb387d"
    end
  end

  url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-#{macos_version}.dmg",
      verified: "github.com/saturneric/GpgFrontend/"
  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.bktus.com/"

  depends_on formula: "gnupg"
  depends_on macos: :ventura

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

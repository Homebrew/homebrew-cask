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
      version "2.1.12"

      on_sonoma do
        macos_version = "14"

        sha256 "a3ce5e9460bcafbaf10de2c7a3848056484590147912a23a3aa60195ecf56ff5"
      end
      on_sequoia do
        macos_version = "15"

        sha256 "7ac4d44d07b8a0931b815768dcdb60c3e9cd46305a5d7b4ac083e1fda218ea59"
      end
      on_tahoe :or_newer do
        macos_version = "26"

        sha256 "af295876bd002d7ee0761af15d3249f1a12ae93baf5cc36ced5db04192232a60"
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

      version "2.1.12"
      sha256 "6fc0de6f444251162e8f4f8901e219939605f62772d7c00ea2d6c23e588f9ebc"
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

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
      version "2.1.11"

      on_sonoma do
        macos_version = "14"

        sha256 "86914b0f3ed81ea2ddd2bec7b99c76544e5a09e60b1cfcf2e024afc105156a9a"
      end
      on_sequoia do
        macos_version = "15"

        sha256 "0e332e00a443396957fff522d329c255bd560704537591192c765bfdd04a5cb6"
      end
      on_tahoe :or_newer do
        macos_version = "26"

        sha256 "561c72b35c460f554726e039d42a6ab443f28e41b360128716093b285500921c"
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

      version "2.1.11"
      sha256 "8bb66ef5bcc0432ea4fd1e31d241fe0a20d01fc4b4e9591893fb3716ce16ce95"
    end
  end

  url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-#{macos_version}.dmg",
      verified: "github.com/saturneric/GpgFrontend/"
  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.bktus.com/"

  depends_on formula: "gnupg"
  depends_on macos: ">= :ventura"

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

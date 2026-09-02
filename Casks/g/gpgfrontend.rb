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
      version "2.2.2"

      on_sequoia do
        macos_version = "15"

        sha256 "1939548a9fa638c0393489bbb094c5d3e71aa1869e858bc926981c64e3220847"
      end
      on_tahoe :or_newer do
        macos_version = "26"

        sha256 "e2503c724975578eec19d25bd34dd94f3281bd3c70b80bb40550cacff41be917"
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
      version "2.2.2"

      on_sequoia do
        macos_version = "15-intel"

        sha256 "157ca3a73676c2aedeb3828d404a7baf633e1e8276e08d524ec3944de4ddfdcb"
      end
      on_tahoe :or_newer do
        macos_version = "26-intel"

        sha256 "5de9cd993b4a90e818e9c1c746fba3828840388d25392d729774c93c654679ea"
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
    "~/Library/Preferences/GpgFrontend",
    "~/Library/Preferences/GpgFrontend.plist",
    "~/Library/Preferences/pub.gpgfrontend.gpgfrontend.plist",
    "~/Library/Saved Application State/pub.gpgfrontend.gpgfrontend.savedState",
  ]
end

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
      version "2.2.5"

      on_sequoia do
        macos_version = "15"

        sha256 "91d023c9f42f7ff85cfb5ada41815902d55d672864bb209a98bdac61cd2ab927"
      end
      on_tahoe :or_newer do
        macos_version = "26"

        sha256 "50eb4c010ee6e384c9456aae90207a2694163041648096f928b3b8a689d81779"
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
      version "2.2.5"

      on_sequoia do
        macos_version = "15-intel"

        sha256 "89e0a9ad1e8732df256440a2ce91b6aac13d00fb85989ae72bd3bb17f3af7f03"
      end
      on_tahoe :or_newer do
        macos_version = "26-intel"

        sha256 "88f27ab5528d72762d660be7699d62e878702bf59554840c20775c1cc4cfd955"
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

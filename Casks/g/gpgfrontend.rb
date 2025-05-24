cask "gpgfrontend" do
  macos_version = nil

  on_monterey :or_older do
    macos_version = 12

    version "2.1.5"
    sha256 "731acf48fea4fed6fc4a0065b8e50655e8cff911c62e31f1fc5f4b8c2b478db2"

    livecheck do
      skip "Legacy version"
    end

    caveats do
      requires_rosetta
    end
  end
  on_ventura do
    macos_version = 13

    version "2.1.7"
    sha256 "e7492fcaf2522992f1a4a2f62656f22b64403f56325f11a975c5d875c54c3558"

    livecheck do
      skip "Legacy version"
    end

    caveats do
      requires_rosetta
    end
  end
  on_sonoma do
    macos_version = 14

    version "2.1.8"
    sha256 "5d1c2f1e9b2a4157d13be4ab6afb3e95a0d8eae20ce8c3942090d4acc622bb10"

    depends_on arch: :arm64
  end
  on_sequoia :or_newer do
    macos_version = 15

    version "2.1.8"
    sha256 "691e220a0bf6a5af95dc476ef41c81dc73b59430d7b9940d42b7750af0943f66"

    depends_on arch: :arm64
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

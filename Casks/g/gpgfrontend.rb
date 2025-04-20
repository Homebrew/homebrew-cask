cask "gpgfrontend" do
  on_monterey :or_older do
    version "2.1.5"
    sha256 "731acf48fea4fed6fc4a0065b8e50655e8cff911c62e31f1fc5f4b8c2b478db2"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-12.dmg",
        verified: "github.com/saturneric/GpgFrontend/"

    livecheck do
      skip "Legacy version"
    end

    caveats do
      requires_rosetta
    end
  end
  on_ventura do
    version "2.1.8"
    sha256 "6a115d7201f59d00a550428fd3f1ebbb2917f59eab85a60aa19e9d3bd371b9e0"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-13.dmg",
        verified: "github.com/saturneric/GpgFrontend/"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma do
    version "2.1.8"
    sha256 "5d1c2f1e9b2a4157d13be4ab6afb3e95a0d8eae20ce8c3942090d4acc622bb10"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-14.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end
  on_sequoia :or_newer do
    version "2.1.8"
    sha256 "691e220a0bf6a5af95dc476ef41c81dc73b59430d7b9940d42b7750af0943f66"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-15.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end

  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.bktus.com/"

  depends_on macos: ">= :monterey"
  depends_on formula: "gnupg"

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

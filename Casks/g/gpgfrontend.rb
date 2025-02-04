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
    version "2.1.7"
    sha256 "e7492fcaf2522992f1a4a2f62656f22b64403f56325f11a975c5d875c54c3558"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-13.dmg",
        verified: "github.com/saturneric/GpgFrontend/"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma do
    version "2.1.7"
    sha256 "943131ceb28696764d4dc215f5b841fe340b9071857afa06503630199eec01e3"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-14.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end
  on_sequoia :or_newer do
    version "2.1.7"
    sha256 "ca5f7e885b8e214aa9c325e07654fe0cc281744ff587f21227caa9eda8196c00"

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

cask "gpgfrontend" do
  version "2.1.3"

  on_big_sur :or_older do
    sha256 "a7fa8ded6a28c31a14552b8114371c7a089aa76dc065825e3fedf1139240aa9e"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-11.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end
  on_monterey :or_newer do
    sha256 "e3ef0060b1793cc1731edf96e2223aa0a35ff447aa1d590c90a81db23b14fe59"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-12.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end

  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.bktus.com/"

  depends_on macos: ">= :big_sur"
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

  caveats do
    requires_rosetta
  end
end

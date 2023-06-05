cask "gpgfrontend" do
  version "2.1.0"

  on_big_sur do
    sha256 "3558d8786573b8a01dc784465e6dcddba5f58a8b30ce09280a55bdfc29612e6a"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-11-x86_64.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end
  on_monterey :or_newer do
    sha256 "cd1823c287cfcf550939908938e87aafe0e481fe38edafd3aa79557085b59350"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-12-x86_64.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end

  name "GpgFrontend"
  desc "OpenPGP/GnuPG crypto, sign and key management tool"
  homepage "https://gpgfrontend.pub/"

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
end

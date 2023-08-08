cask "gpgfrontend" do
  version "2.1.1"

  on_big_sur do
    sha256 "365ffc4a42efbb695b52c03fc98f861e388c4ca38b3921f0597ccc49a08b44ae"

    url "https://github.com/saturneric/GpgFrontend/releases/download/v#{version}/GpgFrontend-#{version}-macos-11.dmg",
        verified: "github.com/saturneric/GpgFrontend/"
  end
  on_monterey :or_newer do
    sha256 "480b2b603da29fcff0ff22f42bff853580b637d17c61ed401bd9a3cd4c5d4c10"

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
end

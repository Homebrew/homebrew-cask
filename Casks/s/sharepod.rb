cask "sharepod" do
  version "4.3.2"
  sha256 "1e6799be8764fb6f57ff87fef79de86d0391d63d349f68999f02729a72529211"

  url "https://assets.macroplant.com/download/32/Sharepod-#{version}.dmg",
      verified: "assets.macroplant.com/"
  name "Sharepod"
  desc "Transfer music from iOS to Macs or PC"
  homepage "https://www.getsharepod.com/"

  livecheck do
    url "https://macroplant.com/sharepod/download/"
    strategy :header_match
  end

  app "Sharepod.app"

  zap trash: [
        "~/Library/HTTPStorages/com.macroplant.Sharepod",
        "~/Library/HTTPStorages/com.macroplant.Sharepod.binarycookies",
        "~/Library/Preferences/com.macroplant.Sharepod.plist",
        "~/Library/Saved Application State/com.macroplant.Sharepod.savedState",
      ],
      rmdir: "~/Music/Sharepod Import"

  caveats do
    requires_rosetta
  end
end

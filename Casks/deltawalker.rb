cask "deltawalker" do
  version "2.6.0"
  sha256 "445f24ae130c2743fb99951615c4ae77be8f58260a07236871d98fdcbfa434b1"

  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}.dmg",
      verified: "deltawalker.s3.amazonaws.com/"
  name "DeltaWalker"
  desc "Tool to compare and synchronize files and folders"
  homepage "https://www.deltawalker.com/"

  livecheck do
    url "https://www.deltawalker.com/download"
    regex(/href=.*?DeltaWalker[._-]?v?(\d+(?:\.\d+)+)\.dmg/)
  end

  app "DeltaWalker.app"

  zap trash: [
    "~/Library/Caches/com.deltopia.DeltaWalker",
    "~/Library/Containers/com.deltopia.DeltaWalker",
    "~/Library/Preferences/com.deltopia.DeltaWalker.plist",
    "~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState",
  ]
end

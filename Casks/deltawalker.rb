cask "deltawalker" do
  version "2.6.3"
  sha256 "9c9ffa07ff60a1da15f6154884cab1a26a5dcc59caa0ca0bf928f3bcbc32320f"

  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}.dmg",
      verified: "deltawalker.s3.amazonaws.com/"
  name "DeltaWalker"
  desc "Tool to compare and synchronize files and folders"
  homepage "http://www.deltawalker.com/"

  livecheck do
    url "http://www.deltawalker.com/download"
    regex(/href=.*?DeltaWalker[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "DeltaWalker.app"

  uninstall script: {
    executable:   "#{staged_path}/run-me-first",
    sudo:         false,
    must_succeed: false,
  }

  zap trash: [
    "~/Library/Caches/com.deltopia.DeltaWalker",
    "~/Library/Containers/com.deltopia.DeltaWalker",
    "~/Library/Preferences/com.deltopia.DeltaWalker.plist",
    "~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState",
  ]
end

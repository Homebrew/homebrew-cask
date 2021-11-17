cask "deltawalker" do
  version "2.6.1"
  sha256 "0acdf90bca9210ebb436a3e1da8828cfed1e98fbaa593da61daf360fd450d3e6"

  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}.dmg",
      verified: "deltawalker.s3.amazonaws.com/"
  name "DeltaWalker"
  desc "Tool to compare and synchronize files and folders"
  homepage "http://www.deltawalker.com/"

  livecheck do
    url "http://www.deltawalker.com/download"
    regex(/href=.*?DeltaWalker[._-]?v?(\d+(?:\.\d+)+)\.dmg/)
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

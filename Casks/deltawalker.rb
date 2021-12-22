cask "deltawalker" do
  version "2.6.2"
  sha256 "5bd9afbaf661e32caa58e8b2dbcc37765715570a57cba08d24ff2f1a70831263"

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

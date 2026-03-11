cask "deltawalker" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "e6d0b2e8617902fc05b1516c4209ee23bf42fc20dd3dc30d7605fdb3e1649976",
         intel: "4f897341924bf65b3cbe76361c5fe9c0d4d51cf63cbdcd46fc3ed5a551cc7528"

  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}_#{arch}.dmg",
      verified: "deltawalker.s3.amazonaws.com/"
  name "DeltaWalker"
  desc "Tool to compare and synchronise files and folders"
  homepage "https://www.deltawalker.com/"

  livecheck do
    url "https://www.deltawalker.com/download"
    regex(/href=.*?DeltaWalker[._-]?v?(\d+(?:\.\d+)+)_#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "DeltaWalker.app"

  uninstall script: {
    executable:   "#{staged_path}/run-me-first.command",
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

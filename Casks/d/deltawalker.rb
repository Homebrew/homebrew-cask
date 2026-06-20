cask "deltawalker" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.2-RC2"
  sha256 arm:   "27bb38ba3e35ed043bd8ac89316ae5fd42ec69b5fc3f83a9a252ff4bee9fbb0f",
         intel: "b056087c267a753e4b98eb2fa2a95621115e402c2752a768a103549d5fe60389"

  # The uninstall script is not present in the intel version.
  on_arm do
    uninstall script: {
      executable:   "#{staged_path}/run-me-first.command",
      sudo:         false,
      must_succeed: false,
    }
  end

  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}_#{arch}.dmg",
      verified: "deltawalker.s3.amazonaws.com/"
  name "DeltaWalker"
  desc "Tool to compare and synchronise files and folders"
  homepage "https://www.deltawalker.com/"

  livecheck do
    url "https://www.deltawalker.com/download"
    regex(/href=.*?DeltaWalker[._-]?v?(\d+(?:[._]\d+)+(?:[._-]RC\d+)?)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :big_sur

  app "DeltaWalker.app"

  zap trash: [
    "~/Library/Caches/com.deltopia.DeltaWalker",
    "~/Library/Containers/com.deltopia.DeltaWalker",
    "~/Library/Preferences/com.deltopia.DeltaWalker.plist",
    "~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState",
  ]
end

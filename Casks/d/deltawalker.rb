cask "deltawalker" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "804c509f0813e28c3b960a24ab57f200331ba2333ed9ef9dee479f29ac3bf554",
         intel: "e1000806db159cd760fd4d812f475581851d5c02a6f4f7bc1040835bcc6668ad"

  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}_#{arch}.dmg",
      verified: "deltawalker.s3.amazonaws.com/"
  name "DeltaWalker"
  desc "Tool to compare and synchronise files and folders"
  homepage "https://www.deltawalker.com/"

  livecheck do
    url "https://www.deltawalker.com/download"
    regex(/href=.*?DeltaWalker[._-]?v?(\d+(?:\.\d+)+)_#{arch}\.dmg/i)
  end

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

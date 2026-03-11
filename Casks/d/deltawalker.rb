cask "deltawalker" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "7000de87a713ed172c94c0471e90d57a2a73c1d585182247efd410db61edb95b",
         intel: "722ed3534ae90151d398042374ec2137decec5b737bfb2e56bb778f955d497f9"

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

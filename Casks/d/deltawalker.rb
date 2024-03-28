cask "deltawalker" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.4"
  sha256 arm:   "f92abbf7b971a7e1d986fe0991e26daa3121449f428f380af89fe06eaa7cccea",
         intel: "8d508521c98c4dec3a7affe1190e4911818032ffc82a17a7fb4a64b0a097246f"

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

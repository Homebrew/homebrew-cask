cask "cate" do
  arch arm: "-arm64"

  version "1.5.3"
  sha256 arm:   "b6d756e7347c40b613428fde60adb20744be2f4a4456240c9cd54df1b09d81b5",
         intel: "5d20f8b740f33a3f205225d9c053e5ccde66cfd85a246f133add46f24a243511"

  url "https://github.com/0-AI-UG/cate/releases/download/v#{version}/Cate-#{version}#{arch}.dmg",
      verified: "github.com/0-AI-UG/cate/"
  name "Cate"
  desc "Infinite zoomable canvas with editor, terminal, and browser panels"
  homepage "https://cate.cero-ai.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Cate.app"

  zap trash: [
    "~/.cate",
    "~/Library/Application Support/Cate",
    "~/Library/Application Support/CrashReporter/Cate Helper_*.plist",
    "~/Library/Caches/cate-updater",
    "~/Library/Caches/com.cate.app",
    "~/Library/Caches/com.cate.app.ShipIt",
    "~/Library/HTTPStorages/com.cate.app",
    "~/Library/Logs/Cate",
    "~/Library/Preferences/ByHost/com.cate.app.ShipIt.*.plist",
    "~/Library/Preferences/com.cate.app.plist",
    "~/Library/Saved Application State/com.cate.app.savedState",
  ]
end

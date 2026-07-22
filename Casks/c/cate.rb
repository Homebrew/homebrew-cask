cask "cate" do
  arch arm: "-arm64"

  version "1.5.2"
  sha256 arm:   "a2695c8bee890d064c857492316416efb200b93106127f77867b3198c608198b",
         intel: "6eaa3ea7efd082f0ed173ae09d1a3234b4116dc99ecf87ba7e38d0a4ea034ac8"

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

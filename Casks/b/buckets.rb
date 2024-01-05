cask "buckets" do
  arch arm: "arm64", intel: "amd64"

  version "0.72.1"
  sha256 arm:   "0150a22b048f01563359f8b3fd11c3666b43bbf0d9618934d0529697183eb09e",
         intel: "3f9f6a5b4b1cfa8b05d6837bd7f072c01447af517d13d01be695606d66bfd840"

  url "https://github.com/buckets/application/releases/download/v#{version}/Buckets-#{arch}-#{version}.dmg",
      verified: "github.com/buckets/application/"
  name "Buckets"
  desc "Budgeting tool"
  homepage "https://www.budgetwithbuckets.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Buckets.app"

  zap trash: [
    "~/Library/Application Support/Buckets",
    "~/Library/Application Support/Caches/buckets-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.buckets.application.sfl*",
    "~/Library/Caches/com.github.buckets.application",
    "~/Library/Caches/com.github.buckets.application.ShipIt",
    "~/Library/HTTPStorages/com.github.buckets.application",
    "~/Library/Logs/Buckets",
    "~/Library/Logs/DiagnosticReports/Buckets-*.ips",
    "~/Library/Preferences/ByHost/com.github.buckets.application.ShipIt.*.plist",
    "~/Library/Preferences/com.github.buckets.application.plist",
    "~/Library/Saved Application State/com.github.buckets.application.savedState,",
  ]
end

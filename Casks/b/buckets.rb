cask "buckets" do
  arch arm: "arm64", intel: "amd64"

  version "0.80.0"
  sha256 arm:   "2d7ec7a7d5cf1845c9f2c7adfb37426c7886ae10abec4cca7545cc022277b9c9",
         intel: "54528d1c01c90cc514bd7d534f541f453d3796676991846a04a3a971bfb76a5d"

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

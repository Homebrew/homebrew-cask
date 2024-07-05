cask "buckets" do
  arch arm: "arm64", intel: "amd64"

  version "0.75.0"
  sha256 arm:   "61d576908eff4cc2970bb5809a34ac437167e759211abba67b50a1f76bae0214",
         intel: "91a7fcbbeb603d00b6987ab94a4630176702b4afd30dd999687339a48673dd9b"

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

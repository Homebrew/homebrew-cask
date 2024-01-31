cask "buckets" do
  arch arm: "arm64", intel: "amd64"

  version "0.72.2"
  sha256 arm:   "9f9104a700d5546fe55161b7c5e41ec12b2f57ff64d96236a13905cb508eb42c",
         intel: "a0b02ee94a648fcd26c7d4ad18abcf241ee89fa972ace8ede84ee741fdbfa1d0"

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

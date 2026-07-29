cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.17.0"
  sha256 arm:   "68b9d58f87f7cb6bc676dbe3e8be1a09c628020185b1baa27c7939ea7e532a20",
         intel: "5ec2677e15f850a16db2e0f38bc7030a06a4a8c1c2a786efe68250810d2e31b0"

  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-v#{version}-darwin-#{arch}.tar.gz",
      verified: "github.com/itchio/itch/"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "itch.app"

  uninstall quit: "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.itch.mac.sfl*",
    "~/Library/Application Support/CrashReporter/itch_*.plist",
    "~/Library/Application Support/itch",
    "~/Library/Logs/DiagnosticReports/itch-*.ips",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]
end

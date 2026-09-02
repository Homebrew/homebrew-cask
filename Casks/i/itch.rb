cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.20.0"
  sha256 arm:   "2510857d6854fa538157b001fc6d577cf42addc2f2974abc81c91cb1eae47f80",
         intel: "5dbaf5a5f6b8f2f5d1b8992dbd662fcb771fb4cc27ffdf66419f356cf91ca541"

  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-v#{version}-darwin-#{arch}.tar.gz"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

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

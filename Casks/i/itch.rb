cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.18.0"
  sha256 arm:   "1c1276060458c039379bfb72242366b8939064ad2362377610ad65da59ea69bd",
         intel: "7f138a32814c02325f6aabc8ca9b0b05ae311d188c6e5c655edbecd93dca5364"

  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-v#{version}-darwin-#{arch}.tar.gz"
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

cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.22.0"
  sha256 arm:   "fd31ff479b6e085a5599bd4c2599005d4505e50f13ba87fa7357ffedb2c07e19",
         intel: "3a13b128b57a5b52e406b7b1ccf4439703d63b9326fe54bbaf5e60a2ab738c68"

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

cask "distill-web-monitor" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1-beta"
  sha256 arm:   "976d20c66311e8adbba6998306a5b5404d0b326b4c8189288df6f82aaa3fe26e",
         intel: "adbc09704a0182d58851757474c9bef8c41dc1a42d00e93773452c052f81751f"

  url "https://dev-distill-releases.s3.us-east-2.amazonaws.com/web-monitor/beta/#{version.sub("-beta", "")}/Distill%20Web%20Monitor-darwin-#{arch}-#{version}.zip"
  name "Distill Web Monitor"
  desc "Monitor webpages for changes"
  homepage "https://distill.io/"

  livecheck do
    url "https://utils.distill.io/electron/check-for-updates/stable/0.0.0/darwin/#{arch}"
    regex(/Distill%20Web%20Monitor-darwin-#{arch}[._-]v?(\d+(?:\.\d+)+(?:-beta)?)\.zip/i)
    strategy :json do |json, regex|
      json["url"]&.match(regex)&.captures
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Distill Web Monitor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.distill-web-monitor.sfl*",
    "~/Library/Application Support/Distill Web Monitor",
    "~/Library/Caches/com.electron.distill-web-monitor",
    "~/Library/Caches/com.electron.distill-web-monitor.ShipIt",
    "~/Library/HTTPStorages/com.electron.distill-web-monitor",
    "~/Library/Preferences/com.electron.distill-web-monitor.plist",
  ]
end

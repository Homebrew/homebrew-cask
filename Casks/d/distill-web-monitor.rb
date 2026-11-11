cask "distill-web-monitor" do
  arch arm: "arm64", intel: "x64"

  version "4.3.2-beta"
  sha256 arm:   "9eeb4bce7d4c89e11319d65ad4f1af30cec612f60d701f59989bd18b28df7743",
         intel: "0e29880ba53fad2d38d4dd78c52f9902d9518e78967cfb77e55c978a10270104"

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

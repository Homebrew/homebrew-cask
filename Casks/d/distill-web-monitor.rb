cask "distill-web-monitor" do
  arch arm: "arm64", intel: "x64"

  version "4.1.1-beta"
  sha256 arm:   "f7802af4dd0295894ec0d88a2bde1c2f48436a0d2926c5356de644d05559f2ed",
         intel: "367e42d3c598dc690798d99afeaa1faaa38a4cda57ea4edc978818780bcc3630"

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
  depends_on macos: :monterey

  app "Distill Web Monitor.app"

  zap trash: [
    "~/Library/Application Support/Distill Web Monitor",
    "~/Library/Caches/com.electron.distill-web-monitor",
    "~/Library/Caches/com.electron.distill-web-monitor.ShipIt",
    "~/Library/HTTPStorages/com.electron.distill-web-monitor",
    "~/Library/Preferences/com.electron.distill-web-monitor.plist",
  ]
end

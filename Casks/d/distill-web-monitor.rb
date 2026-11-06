cask "distill-web-monitor" do
  arch arm: "arm64", intel: "x64"

  version "4.3.0-beta"
  sha256 arm:   "2f6999518a61a05480d5ad28b51e194c0423373218caf845a87f6cfd168d6a3d",
         intel: "1fece9c2665f4f4f232b1f3a5ac235568e07e37a0a7c2d3eeb9d9a19879b2c95"

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

cask "distill-web-monitor" do
  arch arm: "arm64", intel: "x64"

  version "4.3.3-beta"
  sha256 arm:   "402150ddee2d6448302582f55517d72a2ba4b58e087a63057e5c9db31bc8d90a",
         intel: "981f8751d91a0e7defaa1353cb26c11130f599437a09f14d675f658cdf50601c"

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

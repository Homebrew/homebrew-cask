cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.8.0.1"
  sha256 arm:   "68fd808f1b71b03d29b023e6f026aabac4b06d02f95bebb7b02b9ab6109a02c0",
         intel: "3e8456de90283b9eb585fc367cae90aa364e2d9f07404266ebf358e2322154ff"

  url "https://down.115.com/client/mac/115br_v#{version}_#{arch}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/browser.html#mac"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome"
    strategy :json do |json|
      json.dig("data", "mac", "version_code")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end

cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.17.0"
  sha256 arm:   "ce56eb1f96169d98ecbe45233f5a2ef6cbf69517c978b0945734ea1bc5cb8044",
         intel: "09dd557971fced69a4e7029b491167ea2c073baff2bf73657ba1c2a5a6357529"

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

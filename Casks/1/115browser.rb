cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.19.0"
  sha256 arm:   "6e4f67c3bdfd1fdb8834d4934b837ce382c5e2ab5b03faf3dab05b409c724454",
         intel: "646abab066a0f2219de8dad21c71d8aea7ebdffb20f431b37213d9c4328d11b9"

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

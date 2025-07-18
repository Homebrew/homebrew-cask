cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.30.0"
  sha256 arm:   "dd50a66ae71531ffc10eda849ba8a0649283827215ac9dcbb45de389838fcb57",
         intel: "e94965e79e23bd5c66138e004cc56fd0302f1c14cadb0aef0aa977d19fe7ab6f"

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

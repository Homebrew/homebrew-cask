cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.23.0"
  sha256 arm:   "b01af0b663bfc8046fd8561626bff3884c819e8fb7df36cfbd90b006dff96c91",
         intel: "8412f9fea580915ecdf297c7c48c787a1308fbd386d97b5e9d39da9ebfa4d8e8"

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

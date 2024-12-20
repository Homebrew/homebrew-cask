cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "27.0.8.2"
  sha256 arm:   "8d1fc8deb14ec1dd948bd78937557c38ace7c589f9535f985e230c136f70f842",
         intel: "5d4205486ac8e22c96a69a2cecf154cfa05bb4f7876b9e042045eca1f27fb5e1"

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
  depends_on macos: ">= :high_sierra"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end

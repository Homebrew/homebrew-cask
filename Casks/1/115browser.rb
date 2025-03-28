cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.12.0.2"
  sha256 arm:   "865b1af5e5ec1e05f9a9f761708f681d0942ab9ba6af9c8acf06e6b40c44bd56",
         intel: "45f5737fda32be45fb8eea552a9d3ad60783066ee86f8a2b6a46e64170928245"

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

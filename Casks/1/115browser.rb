cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.16.0"
  sha256 arm:   "40a42fe506d62e71b4c8b6d4935e458323ebbffe725b12da7908031da2f6d07b",
         intel: "5c8884cad0f0d6a3552b509a4ae79b0bc34fc1378a96ed6986536699c6a9dc07"

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

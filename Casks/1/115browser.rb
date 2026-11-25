cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "36.0.1"
  sha256 arm:   "3f44fb753709f950e61196f7df2195bb19b2f13f1758a777accaabeb041bf94f",
         intel: "2f2138fe7f2971c1a8070d80511a3ffd5897964dffa8f0f412761d1c56886f43"

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
  depends_on :macos

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end

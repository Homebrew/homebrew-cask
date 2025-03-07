cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.9.0.2"
  sha256 arm:   "73711dee2fe52e955324fbf8280ef1c09d4f438c184d946eed3396bdd7e51d1d",
         intel: "c6737f3509fc9953a32c1d1fec3c09d37a55e6fcab3062b311391d2964920ea2"

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

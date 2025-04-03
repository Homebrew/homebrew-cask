cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.13.0.2"
  sha256 arm:   "c81ebba8eb50b5e89fd6d93d42a7c1690f88219ea266ab91f0193f1ba708fecc",
         intel: "d04b9c4515fe2b57d0e67af5146948ba7e452312784e1de1ca89bb07fd866ce7"

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

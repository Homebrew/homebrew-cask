cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.3.0.2"
  sha256 arm:   "b29c6431de3ab1c33272cd1fb67054debb29e724e7c0c4813c844bb406edd4bf",
         intel: "f6b59453b3dfb2ba08df56a3d10118951dfbea9a44ecde5f172a9b066a231687"

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

cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.15.0.2"
  sha256 arm:   "590b7c379ff23df3b828c34301a449c2ad6f61aa18f437dcd4516f4023d110ac",
         intel: "8bc32ba30c4983c544bb9de01ae49d2c038c30eda80143bedfe3e2f3b07e7c55"

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

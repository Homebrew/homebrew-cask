cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "27.0.9.3"
  sha256 arm:   "d7a274c128b5d0320ce191c828f53614e94c8f83d42e3c396ec30972ae725b61",
         intel: "9c2af21b48c0f53b24a4d7b6e89ca8b32e78ecdafdd5375f13c5018258a23767"

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

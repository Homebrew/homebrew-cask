cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "26.0.6.6"
  sha256 arm:   "de4c11f4341bbbea5ecc0e8375a176034db6ffae07da55b9c739cdeb2f0f74b2",
         intel: "3e235a0d263aa8fd96f2e4674d632d2a85d1d7fa6f1e73442452cfc1e7e69aeb"

  url "https://down.115.com/client/mac/115br_v#{version}_#{arch}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/browser.html#mac"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome"
    strategy :json do |json|
      json["data"]["mac"]["version_code"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end

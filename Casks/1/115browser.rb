cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "36.0.0"
  sha256 arm:   "4854217ba2455d5848f11c7087c2cff15d7a2f44fc35400f96a5e38e4e4ed539",
         intel: "8b9c149426e9a9954f9da71d51e7e57c01480076218d9124b806738b49cb12eb"

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

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end

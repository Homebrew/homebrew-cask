cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.11.0.3"
  sha256 arm:   "e61b98a56579f4df7abedbf86c7707870aea80925f8ab806720d64c02b2d1cb2",
         intel: "fa35c9bc4f6760ad62770d371724beb71e12808b93e64c6ff30daba96a22c4e7"

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

cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "27.0.2.7"
  sha256 arm:   "76031e0d7c2d0cc35e5e1c9abd59df4ff5662ed76256e36c73eb51110e7d68ae",
         intel: "b2f90a4fd66a129cd4a79e30f614c08946634ffe36e6d5d1b6a251c135589cb0"

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

cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.0.0.2"
  sha256 arm:   "2ca1be4bcbf1d3ad7a08eab1bdb21c7020e394135b3b07754322be23261b5f9a",
         intel: "6f962559b13a09ac87a8456d1c142d9292876206f397adc5b15567cec04ecdf6"

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

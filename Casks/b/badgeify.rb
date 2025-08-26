cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.8"
  sha256 arm:   "dcc16647674805c1ce2e858cdc4a0dc25a0f33a5d7bc5337bf85bed6ceae3c98",
         intel: "0af78ccd1f502a5a9fd808d3c3e93f4aa1e0dec18234be66070c21d806d8ff53"

  url "https://api.badgeify.app/release/download/darwin/#{arch}/#{version}"
  name "Badgeify"
  desc "Add apps to the menu bar"
  homepage "https://badgeify.app/"

  livecheck do
    url "https://api.badgeify.app/release/latest"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Badgeify.app"

  uninstall quit: "studio.techflow.badgeify"

  zap trash: [
    "~/Library/Application Support/studio.techflow.badgeify",
    "~/Library/Caches/studio.techflow.badgeify",
    "~/Library/Logs/studio.techflow.badgeify",
    "~/Library/Preferences/studio.techflow.badgeify.plist",
    "~/Library/WebKit/studio.techflow.badgeify",
  ]
end

cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.9.1"
  sha256 arm:   "61fda5dacbf6635657c128640693d7b056765cf95d2d9523140e7c5180cfc4b7",
         intel: "90e17e55e7123243b35813feb1adf30a069684b6d40ec9ab5baa14dcb808694a"

  url "https://api.badgeify.app/release/download/darwin/#{arch}/#{version}"
  name "Badgeify"
  desc "Add apps to the menu bar"
  homepage "https://badgeify.app/"

  livecheck do
    url "https://api.badgeify.app/release/latest"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

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

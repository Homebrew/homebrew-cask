cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.5"
  sha256 arm:   "8a8d717f7c66101fd785474e468c5e21319e2cb52fe11e6fbc732e818b586342",
         intel: "c78140848167f9b51f3a721ee260e9d14fac76e1fee0e80674dab42788c1f286"

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

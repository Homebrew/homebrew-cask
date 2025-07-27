cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.3"
  sha256 arm:   "b704e8ea4d3ced502650c5e9acc4f26cb9b0d84c551b2803f98e6aebee69fa20",
         intel: "6e2aab707d9bac417cff1815e7f6bead89cc2986cfe5a86a0eae05594eb279ed"

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

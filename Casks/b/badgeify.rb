cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.1"
  sha256 arm:   "74d60c705a36825985f656542e486f73b2e29e7fb5b4e91c45b49a3a6ebf96e7",
         intel: "d3f61293a5c9c2f6783a7ee66f7b7b4ac125604d7c594d801987deb17e3a5462"

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

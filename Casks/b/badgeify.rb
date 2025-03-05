cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.7"
  sha256 arm:   "598364aed1b84214f1f0e0371a1ca359934b4eda99103db32a8a4f86d31e08ad",
         intel: "a6255d15ac182077844fc6cfcf59674e6e4ba9149d9b7f56a95073d85ceae28e"

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

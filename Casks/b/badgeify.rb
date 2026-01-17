cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.1"
  sha256 arm:   "f5581a2fcfdf0202423d3499a1565e35065bb6e73a12f65fe058d68e08ad0156",
         intel: "772070cb7f0a693445d17132a833b093b9ea330cec13f11a3f20c937f3d025ad"

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

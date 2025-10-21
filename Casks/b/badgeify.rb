cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.9.2"
  sha256 arm:   "33cfdb8e14d6384cbcd737a776852b683c4d6996762780fde905c00149a02a98",
         intel: "4e59879b128d773f5319f62aab43aceb9199a4ef84d1766318760c52b24e505c"

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

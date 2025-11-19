cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.0"
  sha256 arm:   "b2207250920b6fdd63225a2c753cfad86a30f52cb5f38d434493350994848cf6",
         intel: "bf85eb8ca55411c7d73fe9bb1fc9de6eeadc31502149dbfcbc0ff1f43d35ace2"

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

cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.9.3"
  sha256 arm:   "1669c5256ed2b39cdd155fd2d164419c0756f7300fe3743edb20f4de9953376e",
         intel: "fa4392a25589356bafed8d993a8366984271634fdcebb23e35d866e7fab1641d"

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

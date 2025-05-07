cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.3"
  sha256 arm:   "ba61b7efb2e51bc807c3c14314576cadc79c58dffbb79ab464a86cfa4a6a07d6",
         intel: "4b1a46b1da768759e1263e2360f91845bbae11c2cd3e06f3c0fa8db4e974bedc"

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

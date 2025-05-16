cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.6"
  sha256 arm:   "6eaa3c2476ffcd72af9ed7f3e8a5d52744c79b8b45ef864d2e87ca46d8476979",
         intel: "255337d984ccb44d0567fa350769bbb8a3a9767a1049a4c5f0f7ad094a7e38fd"

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

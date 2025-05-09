cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.5"
  sha256 arm:   "e26813c99a9c7d514fc9590f7d6719ac2312f2d35aae8e59ecaab07f4d752ff9",
         intel: "baaadb2b941a235f5e8ed5234db9e86c9272f72e6aab1c39b53e47e1c7051d94"

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

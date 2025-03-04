cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.6"
  sha256 arm:   "1269cc9258ab2cadffefe9abf28dd62a0435e59bcabae3e1839a2be38fb6b0ad",
         intel: "ad6f43c4eccc7211428405ec2c9359c996fb504bab7581a311b0593904acedb7"

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

cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "fe102c9128a3cdd62028c1e9941ac7bfca3915c1f46e57f5a29bba64ef0b14db",
         intel: "121a6019fd70da9911c4226847be79d63bfbdd1a261afcb252cfde6edc3bc664"

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

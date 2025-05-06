cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.2"
  sha256 arm:   "058f1373f1cd81c8d7c8d45197e3e157b508c89c033296aa9995c279d1def0de",
         intel: "b5676a4232cd1e0f019bd3230d6634eba2ba9baa1aa57f7f17a7bf8633ad8756"

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

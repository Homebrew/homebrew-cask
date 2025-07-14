cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.1"
  sha256 arm:   "d9d526c7ad5bd215959eec791e96f6621291da03e60cf86b7961efb7818873e0",
         intel: "755864b82b39be1253d54ab152aa9aa3085cf0726db2bca8e85655b6b2b3572c"

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

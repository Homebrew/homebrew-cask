cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.7"
  sha256 arm:   "fc5891a3a2ffa7497025159b6996eaa950be09468efab7813ecbd3e547e12ce1",
         intel: "055f28b51eed889a53e86155a0375e2992b157416fa41022795a04fd9e4cc93f"

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

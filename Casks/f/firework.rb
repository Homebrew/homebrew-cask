cask "firework" do
  version "3.39.13"
  sha256 :no_check

  url "https://cdn-firework.com/fw/download/packages/FireworkInstaller.dmg"
  name "firework"
  desc "Easiest access to web sites and applications"
  homepage "https://firework.cloud"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :yosemite"

  app "Firework.app"

  zap trash: [
    "~/.config/configstore/flow-desktop.json",
    "~/Library/Application Support/Firework",
    "~/Library/Caches/Firework",
    "~/Library/Saved Application State/cloud.firework.savedState",
    "~/Library/Application Support/Crash Reporter/Firework_61109777-DE87-5166-AC98-88DCB257BB59.plist",
    "~/Library/Preferences/cloud.firework.plist",
  ]
end

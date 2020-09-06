cask "clashx" do
  version "1.30.2"
  sha256 "470244a89d40a0b74ba7fefc12bd18edc0cdd003d9f66a13277d18c497fb28f4"

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast "https://github.com/yichengchen/clashX/releases.atom"
  name "ClashX"
  homepage "https://github.com/yichengchen/clashX"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashX.app"

  zap trash: [
    "~/Library/Preferences/com.west2online.ClashX.plist",
    "~/Library/Logs/ClashX",
    "~/.config/clash/",
  ]
end

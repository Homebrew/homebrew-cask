cask "tablen" do
  version "1.21.1"
  sha256 "8e4ff369e3d440f75c222581e8db9e2995f16f629569771a081160bcad61f23d"

  url "https://cdn.tablen.app/releases/Tablen-#{version}.dmg"
  name "Tablen"
  desc "Native SQL client"
  homepage "https://tablen.app/"

  livecheck do
    url "https://tablen.app/api/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Tablen.app"

  zap trash: [
    "~/Library/Application Support/Tablen",
    "~/Library/Caches/app.tablen.macos",
    "~/Library/HTTPStorages/app.tablen.macos",
    "~/Library/Preferences/app.tablen.macos.plist",
    "~/Library/Saved Application State/app.tablen.macos.savedState",
    "~/Library/WebKit/app.tablen.macos",
  ]
end

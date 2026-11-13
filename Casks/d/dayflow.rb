cask "dayflow" do
  version "2.9.3"
  sha256 "d9b3498ec321d13cc8f416ffbc3ca9fafe0adeac6cb19a0c8bd701926e6946d5"

  url "https://github.com/JerryZLiu/Dayflow/releases/download/v#{version}/Dayflow.dmg"
  name "Dayflow"
  desc "Generate a timeline of your day, automatically"
  homepage "https://github.com/JerryZLiu/Dayflow"

  livecheck do
    url "https://jerryzliu.github.io/Dayflow/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Dayflow.app"
  binary "#{appdir}/Dayflow.app/Contents/Helpers/dayflow"

  uninstall quit: "teleportlabs.com.Dayflow"

  zap trash: [
    "~/Library/Application Scripts/teleportlabs.com.Dayflow",
    "~/Library/Application Support/Dayflow",
    "~/Library/Application Support/teleportlabs.com.Dayflow",
    "~/Library/Caches/teleportlabs.com.Dayflow",
    "~/Library/Containers/teleportlabs.com.Dayflow",
    "~/Library/HTTPStorages/teleportlabs.com.Dayflow",
    "~/Library/Preferences/teleportlabs.com.Dayflow.plist",
    "~/Library/WebKit/teleportlabs.com.Dayflow",
  ]
end

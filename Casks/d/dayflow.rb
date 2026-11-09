cask "dayflow" do
  version "2.8.0"
  sha256 "9a1587de6d8c04baa5b20410b6ccb654f09c417338487ea51f134c448b408606"

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

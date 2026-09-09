cask "dayflow" do
  version "2.4.2"
  sha256 "c4a24d47530a61587e8b8be0987ee683e586c5e82a81cd5e857da0f4cdd7f87d"

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
    "~/Library/Containers/teleportlabs.com.Dayflow",
  ]
end

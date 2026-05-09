cask "rabbit-link" do
  version "1.8.9"
  sha256 :no_check

  url "https://www.rabbit-link.app/macInstallers/Rabbit.dmg"
  name "Rabbit"
  desc "Android Sync app"
  homepage "https://www.rabbit-link.app/"

  livecheck do
    url "https://rabbit-link.app/appcastTest.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Rabbit.app"

  uninstall quit: "com.stem.Rabbit"

  zap trash: [
    "~/Library/Application Scripts/com.stem.Rabbit.RabbitShare",
    "~/Library/Application Scripts/group.com.stem.Rabbit",
    "~/Library/Application Support/com.stem.Rabbit",
    "~/Library/Application Support/Rabbit",
    "~/Library/Caches/com.stem.Rabbit",
    "~/Library/Containers/com.stem.Rabbit.RabbitShare",
    "~/Library/Group Containers/group.com.stem.Rabbit",
    "~/Library/HTTPStorages/com.stem.Rabbit",
    "~/Library/Preferences/com.stem.Rabbit.plist",
    "~/Library/WebKit/com.stem.Rabbit",
  ]
end

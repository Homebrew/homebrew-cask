cask "nukemymac" do
  version "1.1.0"
  sha256 "f4cf03c5037b4eebb1bc101e835997e3049b6258772decceee9ab77286814b41"

  url "https://nukemymac-website.bukhari-kibuka7.workers.dev/api/download/dmg"
  name "NukeMyMac"
  desc "macOS system cleaner and disk space optimizer"
  homepage "https://nukemymac-website.bukhari-kibuka7.workers.dev/"

  livecheck do
    url "https://nukemymac-website.bukhari-kibuka7.workers.dev/api/download"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "NukeMyMac.app"

  zap trash: [
    "~/Library/Application Support/NukeMyMac",
    "~/Library/Caches/com.nukemymac.driver.NukeMyMac",
    "~/Library/Preferences/com.nukemymac.driver.NukeMyMac.plist",
  ]
end

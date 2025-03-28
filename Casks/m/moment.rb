cask "moment" do
  version "1.5.1,152"
  sha256 "e4d22bde68503708193d9b838f9517840b408aefa52ba8a930af10b03f456734"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.moment/#{version.csv.second}.zip"
  name "Moment"
  desc "Countdown app"
  homepage "https://fireball.studio/moment"

  livecheck do
    url "https://fireball.studio/api/release_manager/studio.fireball.moment.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Moment.app"

  zap trash: [
    "~/Library/Application Scripts/*.studio.fireball.moment",
    "~/Library/Application Support/Moment",
    "~/Library/Caches/studio.fireball.moment",
    "~/Library/Group Containers/*.studio.fireball.moment",
    "~/Library/HTTPStorages/studio.fireball.moment",
    "~/Library/Preferences/studio.fireball.moment.plist",
  ]
end

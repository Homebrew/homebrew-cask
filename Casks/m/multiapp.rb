cask "multiapp" do
  version "0.426.0"
  sha256 "2d7c6411c6c50178689a32a0d1c826ddc171a7e43e95a1d6a30fd3d36119af94"

  url "https://updates.multi.app/installers/Multi%20#{version}.dmg"
  name "Multi"
  desc "Multiplayer Collaboration"
  homepage "https://www.multi.app/"

  livecheck do
    url "https://updates.multi.app/installers/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Multi.app"

  zap trash: [
    "~/Library/Application Support/Multi",
    "~/Library/Caches/app.multi.multi",
    "~/Library/Preferences/app.multi.multi.plist",
  ]
end

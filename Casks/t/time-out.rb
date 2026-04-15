cask "time-out" do
  version "3.0"
  sha256 "d2f32fe673f80716ba6f72bc397e01b4de310edaefdcde149e4ff3ff72ff3a33"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  livecheck do
    url "https://dejal.net/appcast/?prod=timeout"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Time Out.app"

  uninstall quit: "com.dejal.timeout"

  zap trash: [
    "~/Library/Application Scripts/*.com.dejal.timeout",
    "~/Library/Caches/com.dejal.timeout",
    "~/Library/Group Containers/*.com.dejal.timeout",
    "~/Library/HTTPStorages/com.dejal.timeout",
    "~/Library/Preferences/com.dejal.timeout.plist",
    "~/Library/Saved Application State/com.dejal.timeout.savedState",
  ]
end

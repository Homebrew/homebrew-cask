cask "time-out" do
  version "2.9.7"
  sha256 "fb39f93737a7ca5b7f73133524427c0c9f3d799a81084eed99dc445030545467"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  livecheck do
    url "https://dejal.net/appcast/?prod=timeout"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

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

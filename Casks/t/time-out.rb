cask "time-out" do
  version "2.9.4"
  sha256 "b36e6ea7324500928d98659d58e68c339988a94a86eecad632805c564c7a58af"

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

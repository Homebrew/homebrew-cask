cask "time-out" do
  version "4.1"
  sha256 "054f2847e014243a02364e296e480f3aad7b6fe5a68205a9d3b22479dbfcf562"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  livecheck do
    url "https://dejal.net/appcast/?prod=timeout"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

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

cask "floodtide" do
  version "1.4.6"
  sha256 "b54bbe1f255f078f2728cf3cc057382631f5c6f3406927ef87758283f5f2ec69"

  url "https://bhopstudio.com/floodtide/downloads/Floodtide-#{version}.dmg"
  name "Floodtide"
  desc "Find and install updates for installed applications"
  homepage "https://bhopstudio.com/floodtide"

  livecheck do
    url "https://bhopstudio.com/floodtide/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Floodtide.app"

  uninstall launchctl: "com.getfloodtide.floodtide.helper",
            quit:      "com.getfloodtide.floodtide"

  zap trash: [
    "~/Library/Application Support/Floodtide",
    "~/Library/Caches/com.getfloodtide.floodtide",
    "~/Library/HTTPStorages/com.getfloodtide.floodtide",
    "~/Library/Preferences/com.getfloodtide.floodtide.plist",
  ]
end

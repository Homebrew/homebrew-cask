# typed: strict
# frozen_string_literal: true

cask "aion" do
  version "2.12.25"
  sha256 "14e8b05d4057785886be14febebae6089e653020e0bc8aa78d82913589cc907b"

  url "https://github.com/monkey-sking/aion-downloads/releases/download/v#{version}/Aion_#{version}_manual.dmg"
  name "Aion"
  desc "Auto-quit truly idle apps without interrupting active work"
  homepage "https://aion.7caifei.com/"

  livecheck do
    url "https://aion.7caifei.com/aion/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Aion.app"

  uninstall launchctl: "com.7fei.Aion.helper.v2",
            quit:      "com.7fei.Aion"

  zap trash: [
    "~/Library/Application Scripts/group.com.7fei.Aion",
    "~/Library/Application Support/Aion",
    "~/Library/Application Support/com.7fei.Aion",
    "~/Library/Caches/AionNotificationIcons",
    "~/Library/Caches/com.7fei.Aion",
    "~/Library/Group Containers/group.com.7fei.Aion",
    "~/Library/HTTPStorages/com.7fei.Aion",
    "~/Library/Preferences/com.7fei.Aion.plist",
    "~/Library/Preferences/group.com.7fei.Aion.plist",
    "~/Library/WebKit/com.7fei.Aion",
  ]
end

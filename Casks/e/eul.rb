cask "eul" do
  version "1.6.2"
  sha256 "09b036f1e934472d55a0417e2a3ce736559caf81a38537c94ab2c6331f258851"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: [
    "~/Library/Application Scripts/com.gaosun.eul.BatteryWidget",
    "~/Library/Application Scripts/com.gaosun.eul.CpuWidget",
    "~/Library/Application Scripts/com.gaosun.eul.MemoryWidget",
    "~/Library/Application Scripts/com.gaosun.eul.NetworkWidget",
    "~/Library/Application Scripts/com.gaosun.eul.shared",
    "~/Library/Caches/com.gaosun.eul",
    "~/Library/Containers/com.gaosun.eul.BatteryWidget",
    "~/Library/Containers/com.gaosun.eul.CpuWidget",
    "~/Library/Containers/com.gaosun.eul.MemoryWidget",
    "~/Library/Containers/com.gaosun.eul.NetworkWidget",
    "~/Library/Group Containers/com.gaosun.eul.shared",
    "~/Library/HTTPStorages/com.gaosun.eul",
    "~/Library/Preferences/com.gaosun.eul.plist",
  ]
end

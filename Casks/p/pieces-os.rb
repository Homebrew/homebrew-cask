cask "pieces-os" do
  version "5.1.3"
  sha256 :no_check

  on_arm do
    url "https://builds.pieces.app/stages/production/os_server/macos-arm64/download"
  end
  on_arm do
    livecheck do
      url "https://builds.pieces.app/stages/production/os_server/sparkle_arm64"
      strategy :sparkle
    end
  end
  on_intel do
    url "https://builds.pieces.app/stages/production/os_server/macos/download"
  end
  on_intel do
    livecheck do
      url "https://builds.pieces.app/stages/production/os_server/sparkle"
      strategy :sparkle
    end
  end

  name "pieces-os"
  desc "Local Datastore, Server, and ML Engine Powering Pieces for Developers Suite"
  homepage "https://pieces.app/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Pieces OS.app"

  uninstall quit: "com.pieces.os"

  zap trash: [
    "~/Library/com.pieces.os",
    "~/Library/Application Support/com.pieces.os",
    "~/Library/Preferences/com.pieces.os.plist",
    "~/Library/LaunchAgents/com.pieces.os.launch.plist",
  ]
end

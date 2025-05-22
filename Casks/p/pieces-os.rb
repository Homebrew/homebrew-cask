cask "pieces-os" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "11.4.1"
  sha256 :no_check

  url "https://builds.pieces.app/stages/production/os_server/macos#{arch}/download"
  name "Pieces OS"
  desc "Local datastore, server, and ML engine powering the Pieces for Developers Suite"
  homepage "https://pieces.app/"

  livecheck do
    url "https://builds.pieces.app/stages/production/os_server/sparkle#{livecheck_arch}"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Pieces OS.app"

  uninstall quit: "com.pieces.os"

  zap trash: [
    "~/Library/Application Support/com.pieces.os",
    "~/Library/com.pieces.os",
    "~/Library/LaunchAgents/com.pieces.os.launch.plist",
    "~/Library/Preferences/com.pieces.os.plist",
  ]
end

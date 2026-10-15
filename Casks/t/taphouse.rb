cask "taphouse" do
  version "1.5.9"
  sha256 "eb3124c2c9d8dca3271466699d78d4b0dd783e02afbecf207be8a56ad9adbde7"

  url "https://taphouse.multimodalsolutions.gr/downloads/Taphouse-#{version}.dmg"
  name "Taphouse"
  desc "Native GUI for Homebrew package management"
  homepage "https://taphouse.multimodalsolutions.gr/"

  livecheck do
    url "https://taphouse.multimodalsolutions.gr/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Taphouse.app"

  uninstall quit: "com.multimodalsolutions.taphouse"

  zap trash: [
    "~/Library/Application Support/Taphouse",
    "~/Library/Caches/Taphouse",
    "~/Library/Preferences/com.multimodalsolutions.taphouse.plist",
  ]
end

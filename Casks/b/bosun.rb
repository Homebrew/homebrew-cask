cask "bosun" do
  version "1.4.0"
  sha256 "cccf6078ec65b63b41cebbccc7ee0ce336e3188188adc6d5329500b477d7051e"

  url "https://dl.bosun.dev/Bosun-#{version}.dmg"
  name "Bosun"
  desc "Menu bar network port, tunnel, VPN, and Docker visibility tool"
  homepage "https://bosun.dev/"

  livecheck do
    url "https://dl.bosun.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Bosun.app"

  uninstall quit: "dev.cuprite.bosun"

  zap trash: [
    "~/Library/Application Support/Bosun",
    "~/Library/Application Support/CrashReporter/Bosun_*.plist",
    "~/Library/Caches/dev.cuprite.bosun",
    "~/Library/HTTPStorages/dev.cuprite.bosun",
    "~/Library/Preferences/dev.cuprite.bosun.plist",
  ]
end

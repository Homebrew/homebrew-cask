cask "bosun" do
  version "1.2.2"
  sha256 "f51d35ca30652fc227a1e66eec3c40a28ddeda35a78ac08523a1c593c634bb7a"

  url "https://github.com/iwunkhaus/bosun-releases/releases/download/#{version}/Bosun.dmg",
      verified: "github.com/iwunkhaus/bosun-releases/"
  name "Bosun"
  desc "Menu bar network port, tunnel, VPN, and Docker visibility tool"
  homepage "https://bosun.dev/"

  livecheck do
    url "https://bosun.dev/appcast.xml"
    strategy :sparkle
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

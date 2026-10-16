cask "cleeen" do
  version "0.12.3"
  sha256 "3477cf00d6cef05ba0469fa4551243cc734c8a39658823529bd743e65b999d4b"

  url "https://dl.cleeen.fehey.com/Cleeen-#{version}.dmg"
  name "Cleeen"
  desc "Disk cleaner"
  homepage "https://cleeen.fehey.com/"

  livecheck do
    url "https://dl.cleeen.fehey.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Cleeen.app"

  uninstall quit: "dev.zayn.Cleeen"

  zap trash: [
    "~/Library/Application Support/Cleeen",
    "~/Library/Caches/dev.zayn.Cleeen",
    "~/Library/HTTPStorages/dev.zayn.Cleeen",
    "~/Library/Preferences/dev.zayn.Cleeen.plist",
  ]
end

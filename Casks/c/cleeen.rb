cask "cleeen" do
  version "0.13.0"
  sha256 "3bf51c9a859e4dc59be4bdf69644a5560257f640c8603eff67468db8090c5c8f"

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

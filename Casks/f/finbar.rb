cask "finbar" do
  version "1.16"
  sha256 "0bea0e6834265f209190fef3cc2c3135709abbf97a5445ab3e3a5815db670874"

  url "https://roeybiran.com/apps/finbar/Finbar%20#{version}.dmg"
  name "Finbar"
  desc "Menu bar searching utility"
  homepage "https://roeybiran.com/apps/finbar/"

  livecheck do
    url "https://roeybiran.com/apps/finbar/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Finbar.app"

  uninstall quit: "com.roeybiran.Finbar"

  zap trash: [
    "~/Library/Application Support/com.roeybiran.Finbar",
    "~/Library/Preferences/com.roeybiran.Finbar.plist",
  ]
end

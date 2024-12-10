cask "supremo" do
  version "4.11.3.2751"
  sha256 "c4f5b409cfa458714d96ea193ffa9ce95983157d8ad7c820e2c6eca4b6fd2162"

  url "https://www.nanosystems.com/AutoUpdateS/macOS/stable/Supremo_#{version}.dmg",
      verified: "nanosystems.com/"
  name "Supremo"
  desc "Remote desktop software"
  homepage "https://www.supremocontrol.com/"

  livecheck do
    url "https://www.nanosystems.com/AutoUpdateS/macOS/stable/SupremoCast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Supremo.app"

  zap trash: [
    "~/Library/Application Support/SupremoRemoteDesktop",
    "~/Library/Preferences/Supremo.plist",
  ]

  caveats do
    requires_rosetta
  end
end

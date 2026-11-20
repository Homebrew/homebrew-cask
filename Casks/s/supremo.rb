cask "supremo" do
  version "4.12.0.3004"
  sha256 "878611cd82a49c6a9f26c35a1ed473e97546f3f1083f39ae20f212ffa3e79307"

  url "https://assets.nanosystems.com/AutoUpdateS/macOS/standard/stable/Supremo_#{version}.dmg"
  name "Supremo"
  desc "Remote desktop software"
  homepage "https://www.supremocontrol.com/"

  livecheck do
    url "https://www.nanosystems.com/AutoUpdateS/macOS/stable/SupremoCast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Supremo.app"

  zap trash: [
    "~/Library/Application Support/SupremoRemoteDesktop",
    "~/Library/Preferences/Supremo.plist",
  ]
end

cask "supremo" do
  version "4.11.7.2990"
  sha256 "e49eb07081a6af8b737c3d46cfabdf150267a3fbc48d1ad70e743d628d0adc93"

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
  depends_on :macos

  app "Supremo.app"

  zap trash: [
    "~/Library/Application Support/SupremoRemoteDesktop",
    "~/Library/Preferences/Supremo.plist",
  ]
end

cask "supremo" do
  version "4.11.6.2934"
  sha256 "6b84683ba4c238d223030a267875e95040b54bf2a166e8b8715900af661275ec"

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

  app "Supremo.app"

  zap trash: [
    "~/Library/Application Support/SupremoRemoteDesktop",
    "~/Library/Preferences/Supremo.plist",
  ]
end

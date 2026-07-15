cask "supremo" do
  version "4.12.0.2999"
  sha256 "458a2263b9164f7cfddfd7df16379d9a38c3109ac65421dfae54290a1abed61a"

  url "https://assets.nanosystems.com/AutoUpdateS/macOS/standard/stable/Supremo_#{version}.dmg",
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

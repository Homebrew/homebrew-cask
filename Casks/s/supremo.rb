cask "supremo" do
  version "4.11.7.2990"
  sha256 "77ace7d4521b4198aa8a1c9663a3578ee44273b520c9e36c2f2924dd080480d7"

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

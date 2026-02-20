cask "sbtltv" do
  version "0.5.3"
  sha256 "f673eaa7b71217ccae86137eebfdc14f2d1800544d8721e838c1b1e1fa3df6c4"

  url "https://github.com/thesubtleties/sbtlTV/releases/download/v#{version}/sbtlTV-#{version}-mac-arm64.dmg",
      verified: "github.com/thesubtleties/sbtlTV/"
  name "sbtlTV"
  desc "Desktop IPTV player built with Electron and mpv"
  homepage "https://github.com/thesubtleties/sbtlTV"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "sbtlTV.app"

  zap trash: [
    "~/Library/Application Support/sbtlTV",
    "~/Library/Preferences/com.sbtltv.app.plist",
    "~/Library/Saved Application State/com.sbtltv.app.savedState",
  ]
end

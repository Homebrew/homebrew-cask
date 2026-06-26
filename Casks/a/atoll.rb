cask "atoll" do
  version "2.2.0"
  sha256 "30e532e69650a7183769dff222bca7106de7dfe4936e9bd9c2096e20f58a4cb2"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/Atoll.#{version}.dmg",
      verified: "github.com/Ebullioscopic/Atoll/"
  name "Atoll"
  desc "Dynamic Island for the MacBook notch"
  homepage "https://getatoll.app/"

  livecheck do
    url "https://raw.githubusercontent.com/Ebullioscopic/Atoll/refs/heads/main/Updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Atoll.app"

  uninstall quit: "com.Ebullioscopic.Atoll"

  zap trash: [
    "~/Library/Caches/com.Ebullioscopic.Atoll",
    "~/Library/HTTPStorages/com.Ebullioscopic.Atoll",
    "~/Library/Preferences/com.Ebullioscopic.Atoll.plist",
  ]
end

cask "atoll" do
  version "2.3.2"
  sha256 "b2b81d6eebb719cc50db04694d25101f85a201bac477418001348c23cecce8b8"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/Atoll-#{version}.dmg",
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

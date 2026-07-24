cask "atoll" do
  version "2.3.3"
  sha256 "bda40abaf9f5f8a69ede7bd838d5c1cc865e40dc5c8135bc1149413840003634"

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

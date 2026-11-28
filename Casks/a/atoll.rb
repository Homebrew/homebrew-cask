cask "atoll" do
  version "3.0.0"
  sha256 "582ad939835aa9fa7ca5b92b7137d8b8532e3390a7bb59d25a38f65ae838e108"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/Atoll-#{version}.dmg"
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

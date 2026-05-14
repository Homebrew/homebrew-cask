cask "amore" do
  version "0.1,35"
  sha256 "c729241934b8451f52b1474fee9051b9ae8afc2cf4c40ab8e2b0700e35c23196"

  url "https://cdn.amore.computer/releases/com.lucas-fischer.Amore/#{version.csv.first}-#{version.csv.second}/Amore.dmg"
  name "Amore"
  desc "App distribution platform with Sparkle, code signing, and notarization"
  homepage "https://amore.computer/"

  livecheck do
    url "https://api.amore.computer/v1/apps/com.lucas-fischer.Amore/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Amore.app"

  zap trash: [
    "~/Library/Application Support/Amore",
    "~/Library/Caches/com.lucas-fischer.Amore",
    "~/Library/HTTPStorages/com.lucas-fischer.Amore",
    "~/Library/Preferences/com.lucas-fischer.Amore.plist",
    "~/Library/WebKit/com.lucas-fischer.Amore",
  ]
end

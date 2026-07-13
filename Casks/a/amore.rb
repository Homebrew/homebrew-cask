cask "amore" do
  version "0.1,42"
  sha256 "6039600e0835064b4aadb422c254638b58815aefe5fa6d8ee9035e3012c0455b"

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

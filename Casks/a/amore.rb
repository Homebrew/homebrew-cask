cask "amore" do
  version "0.1,48"
  sha256 "c5c3a5aa735749ff389a7e01c7152822ff3a5e787be58f0a5eeeca38954f930d"

  url "https://cdn.amore.computer/releases/com.lucas-fischer.Amore/#{version.csv.first}-#{version.csv.second}/Amore.dmg"
  name "Amore"
  desc "App distribution platform with Sparkle, code signing, and notarization"
  homepage "https://amore.computer/"

  livecheck do
    url "https://api.amore.computer/v1/apps/com.lucas-fischer.Amore/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Amore.app"
  binary "#{appdir}/Amore.app/Contents/MacOS/AmoreCLI", target: "amore"

  zap trash: [
    "~/Library/Application Support/Amore",
    "~/Library/Caches/com.lucas-fischer.Amore",
    "~/Library/HTTPStorages/com.lucas-fischer.Amore",
    "~/Library/Preferences/com.lucas-fischer.Amore.plist",
    "~/Library/WebKit/com.lucas-fischer.Amore",
  ]
end

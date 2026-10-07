cask "rotato" do
  version "159.1"
  sha256 "db91da247ce12f18f9eb89b97445b75682fa75540ce81b2e91cea84da7b7a958"

  url "https://download.rota.to/Rotato-#{version}.dmg"
  name "Rotato"
  desc "Mockup generator & animator 3D"
  homepage "https://rotato.app/"

  livecheck do
    url "https://download.rota.to/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Rotato.app"

  zap trash: [
    "~/Library/Application Support/com.mortenjust.Rendermock",
    "~/Library/Application Support/Rotato",
    "~/Library/Caches/com.mortenjust.Rendermock",
    "~/Library/HTTPStorages/com.mortenjust.Rendermock",
    "~/Library/HTTPStorages/com.mortenjust.Rendermock.binarycookies",
    "~/Library/Preferences/com.mortenjust.Rendermock.plist",
  ]
end

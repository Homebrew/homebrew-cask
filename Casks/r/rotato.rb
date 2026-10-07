cask "rotato" do
  version "159"
  sha256 "abe5f6cce6415095529f4bbcb1b973485e477aa610edc812210ac4f82ab2549a"

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

cask "rotato" do
  version "151"
  sha256 "e6e15031ff155dd72005861e36267256cad77797dd78e3164e4f7f41add3501a"

  url "https://download.rota.to/Rotato-#{version}.dmg",
      verified: "download.rota.to/"
  name "Rotato"
  desc "Mockup generator & animator 3D"
  homepage "https://rotato.app/"

  livecheck do
    url "https://download.rota.to/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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

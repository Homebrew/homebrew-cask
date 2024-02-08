cask "rotato" do
  version "144.1"
  sha256 "adad71fad6d6d0af8766d2d4808d475e2896f734f1c30ebe862da09487ef1b58"

  url "https://rotato.app/api/releases/download/#{version}"
  name "Rotato"
  desc "Mockup generator & animator 3D"
  homepage "https://rotato.app/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/a62ce1b5-fb95-4615-a1b0-fd246b7ce1ed"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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

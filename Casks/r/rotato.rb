cask "rotato" do
  version "147"
  sha256 "df06ea5961c8f764133286abf0d4133b619c9918fa794663879e54c5a314eb5c"

  url "https://download.rota.to/Rotato-#{version}.dmg",
      verified: "download.rota.to/"
  name "Rotato"
  desc "Mockup generator & animator 3D"
  homepage "https://rotato.app/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/a62ce1b5-fb95-4615-a1b0-fd246b7ce1ed"
    strategy :sparkle, &:short_version
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

cask "rotato" do
  version "138.2"
  sha256 "397caf3f7b2dd5039168d3d7a4f420eacca4f570518dc492b08c01b920a6dfd2"

  url "https://rotato.app/api/releases/download/#{version}"
  name "Rotato"
  desc "Mockup generator & animator 3D"
  homepage "https://rotato.app/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/a62ce1b5-fb95-4615-a1b0-fd246b7ce1ed"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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

cask "rotato" do
  version "142.377"
  sha256 "2f60c4ea5b645687508bc4cea87a009b8aa00869e95b306728ee17bda083c3fd"

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

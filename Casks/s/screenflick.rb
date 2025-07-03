cask "screenflick" do
  version "3.2.13"
  sha256 "5aff808b16000c2868375a4537e2cf53a8bf3bcf35fdcfef2e6f0190468cc2a4"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  name "Screenflick"
  desc "Screen recorder with audio"
  homepage "https://www.araelium.com/screenflick-mac-screen-recorder"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
    strategy :json do |json|
      json["release"]&.map do |release|
        next if release["downloadURL"].blank?

        release["version"]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "Screenflick.app"

  zap trash: [
    "~/Library/Caches/com.araeliumgroup.screenflick",
    "~/Library/Preferences/com.araeliumgroup.screenflick.plist",
    "~/Library/WebKit/com.araeliumgroup.screenflick",
  ]
end

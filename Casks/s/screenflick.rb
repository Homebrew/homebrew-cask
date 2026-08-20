cask "screenflick" do
  version "3.3.3"
  sha256 "564768ebfd4db626c460824f4ccaac39de8f136afc715afc0c5e731b07acde46"

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

  depends_on :macos

  app "Screenflick.app"

  zap trash: [
    "~/Library/Caches/com.araeliumgroup.screenflick",
    "~/Library/Preferences/com.araeliumgroup.screenflick.plist",
    "~/Library/WebKit/com.araeliumgroup.screenflick",
  ]
end

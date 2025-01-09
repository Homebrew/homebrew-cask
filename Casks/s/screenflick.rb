cask "screenflick" do
  version "3.2.8"
  sha256 "84fbc5a3b9cf84808e03cb7dca309d9ce43b630c18959c297fe57a7827731d6d"

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

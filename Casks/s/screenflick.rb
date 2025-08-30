cask "screenflick" do
  version "3.2.14"
  sha256 "1bbae5810d1c88ac83d0035e1586dd6e303e48186e13b2b1b577f50daef08199"

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

cask "screenflick" do
  version "3.2.11"
  sha256 "ecdeeb36180132274db48627e7c0f110d960b93b3e8a54a9e6740d839dab4301"

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

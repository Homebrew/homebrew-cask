cask "115" do
  version "2.0.7.9"
  sha256 "a9659a98e2a7731da3862ab01523111075bab72c9e0e4294575f085ad06d4835"

  url "https://down.115.com/client/115pc/mac/115pc_#{version}.dmg"
  name "115"
  name "115电脑版"
  desc "Client for the 115 cloud storage service"
  homepage "https://pc.115.com/index.html#mac"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome"
    strategy :json do |json|
      json["data"]["mac_115"]["version_code"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "115电脑版.app"

  uninstall quit: "org.115pc.115Desktop"

  zap trash: [
    "~/Library/Application Support/115",
    "~/Library/Application Support/115DocViewer",
    "~/Library/Application Support/115Player",
    "~/Library/Saved Application State/org.115pc.115Desktop.savedState",
    "~/Library/Saved Application State/org.115pc.115DocViewer.savedState",
    "~/Library/Saved Application State/org.115pc.115Music.savedState",
    "~/Library/Saved Application State/org.115pc.115Photo.savedState",
    "~/Library/Saved Application State/org.115pc.115Player.savedState",
  ]
end

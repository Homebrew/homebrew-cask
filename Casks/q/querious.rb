cask "querious" do
  version "4.2.1"
  sha256 "84a7b8417cddbf1580da69907d17b93a3d1792a9fb98ef0917eb7081ec9d7a0a"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  name "Querious #{version.major}"
  desc "MySQL and compatible databases tool"
  homepage "https://www.araelium.com/querious/"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
    strategy :json do |json|
      json["release"]&.map { |release| release["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Querious.app"

  zap trash: [
    "~/Library/Application Support/Querious",
    "~/Library/Caches/com.apple.helpd/Generated/com.araeliumgroup.querious.help*",
    "~/Library/Caches/com.araeliumgroup.querious",
    "~/Library/HTTPStorages/com.araeliumgroup.querious",
    "~/Library/Logs/Querious.log",
    "~/Library/Preferences/com.araeliumgroup.querious.plist",
    "~/Library/Saved Application State/com.araeliumgroup.querious.savedState",
  ]
end

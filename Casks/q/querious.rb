cask "querious" do
  version "4.2.5"
  sha256 "ef62714c089247a3caf1928bb187367fdbcd8bb5c405df92c8a2090be642c483"

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
  depends_on macos: :monterey

  app "Querious.app"

  uninstall quit: "com.araeliumgroup.querious"

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

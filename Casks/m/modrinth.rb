cask "modrinth" do
  version "0.10.27"
  sha256 "947dff8d20e94053412750cb8256275cba987fe937ada4315e504c0e5ca4f024"

  url "https://launcher-files.modrinth.com/versions/#{version}/macos/Modrinth%20App_#{version}_universal.dmg"
  name "Modrinth App"
  desc "Minecraft modding platform"
  homepage "https://modrinth.com/"

  livecheck do
    url "https://launcher-files.modrinth.com/updates.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Modrinth App.app"

  uninstall quit: "com.modrinth.theseus"

  zap trash: [
    "~/Library/Application Support/com.modrinth.theseus",
    "~/Library/Caches/com.modrinth.theseus",
    "~/Library/Saved Application State/com.modrinth.theseus.savedState",
    "~/Library/WebKit/com.modrinth.theseus",
  ]
end

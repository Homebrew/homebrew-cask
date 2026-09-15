cask "modrinth" do
  version "0.21.2"
  sha256 "bf9f64a3e25e5687e00eee7f30d149db0364473d3f55cb9bdad2499a9aac5a3a"

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
  depends_on :macos

  app "Modrinth App.app"

  uninstall quit: "com.modrinth.theseus"

  zap trash: [
    "~/Library/Application Support/com.modrinth.theseus",
    "~/Library/Application Support/ModrinthApp",
    "~/Library/Caches/com.modrinth.theseus",
    "~/Library/Caches/ModrinthApp",
    "~/Library/HTTPStorages/ModrinthApp.binarycookies",
    "~/Library/Saved Application State/com.modrinth.theseus.savedState",
    "~/Library/WebKit/com.modrinth.theseus",
    "~/Library/WebKit/ModrinthApp",
  ]
end

cask "modrinth" do
  version "0.17.6"
  sha256 "83f570a6391cf1ca061c92bb66bd98c52a2fc2a77fbf1fd6734bc92b21f4db13"

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

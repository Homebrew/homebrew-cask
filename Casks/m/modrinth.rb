cask "modrinth" do
  version "0.20.3"
  sha256 "ae990a1ccd0968662f7f7fd672a4a4a1f5dce03c858e41e9dbd961e9608df46e"

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

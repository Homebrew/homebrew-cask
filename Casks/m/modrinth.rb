cask "modrinth" do
  version "0.10.2"
  sha256 "7522613b044e41b3e56e0159acac99e0266376a93d296c378050577bcc0bf244"

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
  depends_on macos: ">= :high_sierra"

  app "Modrinth App.app"

  uninstall quit: "com.modrinth.theseus"

  zap trash: [
    "~/Library/Application Support/com.modrinth.theseus",
    "~/Library/Caches/com.modrinth.theseus",
    "~/Library/Saved Application State/com.modrinth.theseus.savedState",
    "~/Library/WebKit/com.modrinth.theseus",
  ]
end

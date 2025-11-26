cask "modrinth" do
  version "0.10.20"
  sha256 "77dbc7f2fb96d585657241a4c0d38dfd1433a93d92f9820a448c3500353dc18a"

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

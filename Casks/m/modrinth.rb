cask "modrinth" do
  version "0.8.7"
  sha256 "157cba8d3c30008b9c877e68467f47bcbfa063d328d471fba26b986cba6b163a"

  url "https://launcher-files.modrinth.com/versions/#{version}/macos/Modrinth%20App_#{version}_universal.dmg"
  name "Modrinth App"
  desc "Minecraft modding platform"
  homepage "https://modrinth.com/"

  livecheck do
    url "https://modrinth.com/app"
    regex(/Modrinth%20App[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg/i)
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

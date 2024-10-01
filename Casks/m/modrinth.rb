cask "modrinth" do
  version "0.8.8"
  sha256 "1146a1a41c33365fa2574cfcd0951f8b65a224d4374fd8186f95e136aa098129"

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

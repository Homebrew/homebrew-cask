cask "modrinth" do
  version "0.6.2"
  sha256 "97d96b85046e22aa52b998b73925f6e49fa59aec8b33426d0a6cd95c4557063c"

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
    "~/Library/WebKit/com.modrinth.theseus",
    "~/Library/Saved Application State/com.modrinth.theseus.savedState",
  ]
end

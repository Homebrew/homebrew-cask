cask "modrinth" do
  version "0.5.4"
  sha256 "e0f57aef3ca89bb319c488ab5801b88cee08905a799dc1b0d85dc864369f2a32"

  url "https://launcher-files.modrinth.com/versions/#{version}/macos/Modrinth%20App_#{version}_universal.dmg"
  name "Modrinth App"
  desc "Minecraft modding platform"
  homepage "https://modrinth.com/"

  livecheck do
    url "https://modrinth.com/app"
    regex(/Modrinth%20App[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg/i)
  end

  app "Modrinth App.app"

  uninstall quit: "com.modrinth.theseus"

  zap trash: [
    "~/Library/Application Support/com.modrinth.theseus",
    "~/Library/Caches/com.modrinth.theseus",
    "~/Library/WebKit/com.modrinth.theseus",
    "~/Library/Saved Application State/com.modrinth.theseus.savedState",
  ]
end

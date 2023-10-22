cask "modrinth" do
  version "0.6.0"
  sha256 "d6c7ba3653ec371ced46029dcc1b8ac8077e8baedac985459db8d83d058258ba"

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

cask "lunar-client" do
  arch arm: "arm64", intel: "x64"

  version "3.7.28"
  sha256 arm:          "5da5fbbcf9a3cc51553e61c109a8d45252a08a55d846c6043db22f0114f357e0",
         intel:        "9e9fcb321b7ac46d2600bcc545dc12d8887b917bc622891da5947ce71a0a402c",
         x86_64_linux: "f79e41dc877fc3865463e3c5d507aab4ee2f572649ec28380cf02a657c53f968"

  on_macos do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/Lunar%20Client%20v#{version}-ow-#{arch}.dmg"

    depends_on macos: :ventura

    app "Lunar Client.app"

    zap trash: [
      "~/Library/Application Support/lunarclient",
      "~/Library/Caches/com.moonsworth.client",
      "~/Library/Caches/com.moonsworth.client.ShipIt",
      "~/Library/Logs/Lunar Client",
      "~/Library/Preferences/com.moonsworth.client.plist",
      "~/Library/Saved Application State/com.moonsworth.client.savedState",
    ]
  end
  on_linux do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/Lunar%20Client-#{version}-ow.AppImage"

    depends_on arch: :x86_64

    app_image "Lunar Client-#{version}-ow.AppImage", target: "Lunar Client.AppImage"
  end

  name "Lunar Client"
  desc "All-in-one modpack with mods, settings and cosmetics for all Minecraft versions"
  homepage "https://www.lunarclient.com/"

  livecheck do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/latest-ow-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.delete_suffix("-ow")
    end
  end

  auto_updates true
end

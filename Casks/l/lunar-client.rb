cask "lunar-client" do
  arch arm: "arm64", intel: "x64"

  version "3.7.40"
  sha256 arm:          "be184a293017994a1fc956533e3ec4fae338ac7de75b1f2bc077a72ffac0bfbf",
         intel:        "782b5f48b13b4cbdd9031d22e5a5587594807819cbe644a06293be075f462d0e",
         x86_64_linux: "afe4c5cbb8e2b1594a4c94942d16a75a5bd83f6d5364ff9b0187042162e67f44"

  on_macos do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/Lunar%20Client%20v#{version}-ow-#{arch}.dmg"

    depends_on macos: :ventura

    app "Lunar Client.app"

    uninstall launchctl: "com.moonsworth.client.ShipIt",
              quit:      "com.moonsworth.client"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.moonsworth.client.sfl*",
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

    zap trash: "~/.config/lunarclient"
  end

  name "Lunar Client"
  desc "Minecraft modpack"
  homepage "https://www.lunarclient.com/"

  livecheck do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/latest-ow-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.delete_suffix("-ow")
    end
  end

  auto_updates true
end

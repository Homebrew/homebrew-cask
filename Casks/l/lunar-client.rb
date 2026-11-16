cask "lunar-client" do
  arch arm: "arm64", intel: "x64"

  version "3.7.37"
  sha256 arm:          "dc17b9db2765d88e287fbb7b4996c3e8b89f16838759dfa7de30a603eb6b6962",
         intel:        "c32cdba0ff5a22870fe80e455a7bac7e4ccd12757d2a38614b10a057a9da7b19",
         x86_64_linux: "273e82af282888a6e1dbe09d13c8e02d8574d855b83764ea2913e44442d9e2f5"

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

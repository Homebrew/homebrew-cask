cask "lunar-client" do
  arch arm: "arm64", intel: "x64"

  version "3.7.39"
  sha256 arm:          "b1a4a731b2c294d53ec5d6ffd677ded190f7f2dfdd15164bbdd1dc88bdf1eb1b",
         intel:        "b5a79c3ac8be283fd4ab886824a36c5b44e86317c0e65fac3fcea5c1b3a85dc1",
         x86_64_linux: "f607349b36c47e497922442204b09435e2b5f9e9a5ef505cb71464057a76c4c9"

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

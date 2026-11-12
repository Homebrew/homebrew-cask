cask "lunar-client" do
  arch arm: "arm64", intel: "x64"

  version "3.7.36"
  sha256 arm:          "eccaba45e8970fad0a5e92349a5e40bc4eed27842ce0abb536664c8b10a7a152",
         intel:        "c059ab7975a685d295b95df55fe18133a8d1b096b885e9b0d241b4a366336613",
         x86_64_linux: "cc190995a67db7f27eb438af62d0fb67288dee6b5c66a7b2bf9d4fd9888777e2"

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

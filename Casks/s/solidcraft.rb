cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.40.1"
  sha256 arm:          "b84638aa2cd18a4ba65f83b538546677d5dec39cb657e6d4a1ba44ad1679f770",
         intel:        "b84638aa2cd18a4ba65f83b538546677d5dec39cb657e6d4a1ba44ad1679f770",
         arm64_linux:  "113ed6ee45769796a37a3d433534dd8f63514f80a48bb4dc47b739f1b63da972",
         x86_64_linux: "7f3178c77f534b28b4a263810a940ad8bf088d9b7d993d766537903a49511c2d"

  on_macos do
    app "SolidCraft.app"

    zap trash: [
      "~/Library/Application Support/SolidCraft",
      "~/Library/Preferences/ai.storyteller.solidcraft.plist",
    ]
  end
  on_linux do
    app_image "solidcraft-#{version}-linux-#{arch}.AppImage", target: "SolidCraft.AppImage"

    zap trash: "~/.local/share/solidcraft"
  end

  url "https://github.com/tangency-labs/solidcraft/releases/download/v#{version}/solidcraft-#{version}-#{url_end}"
  name "SolidCraft"
  desc "Parametric 3D CAD modeller"
  homepage "https://solidcraft.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end

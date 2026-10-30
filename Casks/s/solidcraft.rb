cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.27.1"
  sha256 arm:          "38d995d052f0d073a19aa945dc28ccee6dc97dba7e73600e93dc6dd4d36f6a28",
         intel:        "38d995d052f0d073a19aa945dc28ccee6dc97dba7e73600e93dc6dd4d36f6a28",
         arm64_linux:  "5fa320062486b6b0df347e3f20451aa316d97ad16a39d1026a545ad8d1297d8b",
         x86_64_linux: "3c7a118bba5da033dfab6da639a494746acf62c74e7370ebaaa7df567346b90f"

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

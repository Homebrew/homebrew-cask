cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.44.1"
  sha256 arm:          "e8916fc40135a38b4b7c15bbf4698e2b01c2f11402e9dbc32e84021cee400d43",
         intel:        "e8916fc40135a38b4b7c15bbf4698e2b01c2f11402e9dbc32e84021cee400d43",
         arm64_linux:  "32c167275ef0f6453441584492af5f98dd6ad258d543d5a7ecf5cfb5f73f1ce6",
         x86_64_linux: "6e472bd7f557a3c0564e4548c460b1b84d906237c68af327e57d946b13e51cf4"

  on_macos do
    app "SolidCraft.app"

    zap trash: [
      "~/Library/Application Support/SolidCraft",
      "~/Library/Caches/SolidCraft",
      "~/Library/Preferences/ai.storyteller.solidcraft.plist",
      "~/Library/Preferences/io.tangencylabs.solidcraft.plist",
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

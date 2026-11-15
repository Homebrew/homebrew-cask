cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.42.0"
  sha256 arm:          "3929c1e22edbe00e024c9e8a38505dda38cde50f096d37a012b20a0ebdab8b30",
         intel:        "3929c1e22edbe00e024c9e8a38505dda38cde50f096d37a012b20a0ebdab8b30",
         arm64_linux:  "fd016c1d6f9fbc568572610a43c00e9d0eaa32168175a62b7509b9c30669bab6",
         x86_64_linux: "9ed1b81882dea3b055c500a2d1cba45dfe8c8127c6aaac1477bc975284551f2d"

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

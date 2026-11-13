cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.41.0"
  sha256 arm:          "4ca723fb1a7eb5ddbc7d6e3df6a8f568b60a43d87b063e0f6b52135f4bc0a52c",
         intel:        "4ca723fb1a7eb5ddbc7d6e3df6a8f568b60a43d87b063e0f6b52135f4bc0a52c",
         arm64_linux:  "3ddf7ec9c12fb14535253d3202a1fab04d2cbd8547652cef5f0042322f570eb5",
         x86_64_linux: "c45b390de4438874d9d37df172a12af8a556241ebe3ce19d80be5c201df5c6ce"

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

cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.27.0"
  sha256 arm:          "f22d6b4c6440d43572edb93b03f0e4d3cd92ffd532caf730205176b4a08efa93",
         intel:        "f22d6b4c6440d43572edb93b03f0e4d3cd92ffd532caf730205176b4a08efa93",
         arm64_linux:  "a7d2cfb0576541a258b483c2eb0cd7aaa29839d8686d0ad0e5c24e1ab298870c",
         x86_64_linux: "1f0cc8f69e0f3acc978a9e37e2d0825ccaa2e4dfdba171681890ea03b363372c"

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

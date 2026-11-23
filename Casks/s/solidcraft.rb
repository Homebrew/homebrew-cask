cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.47.0"
  sha256 arm:          "d971cb177bd9068ab222c77df3a47b0e8a5a477717e90e3533a7359326a14780",
         intel:        "d971cb177bd9068ab222c77df3a47b0e8a5a477717e90e3533a7359326a14780",
         arm64_linux:  "e463167561d227d1ee34027130ca2c933db6f279d86c1b29803c3a38916a4d89",
         x86_64_linux: "21bb4015a341abe9ccc9eaf66dc85647c45494b94c5767de695e4d7d04f84b55"

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
    strategy :github_latest
  end
end

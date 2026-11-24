cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.48.0"
  sha256 arm:          "6c39f001ce6e1b52a645474afa3c9bc3ef59fd448dbcaa54facbb6b5228417a3",
         intel:        "6c39f001ce6e1b52a645474afa3c9bc3ef59fd448dbcaa54facbb6b5228417a3",
         arm64_linux:  "64ae84ea9787a0d9b9bf2545b6c3d21fd5bd986b8d060e23794ffc864f3cf7e7",
         x86_64_linux: "5f5cb7707b076ddbd908d18dc01c937ca3cb458ca9a42e437dfdbc3ea9969086"

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

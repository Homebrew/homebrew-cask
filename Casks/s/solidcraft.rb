cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.48.1"
  sha256 arm:          "d4862f6147c2b659176543f305b214a689404d0c4dd477fb5bbdab46e07142e5",
         intel:        "d4862f6147c2b659176543f305b214a689404d0c4dd477fb5bbdab46e07142e5",
         arm64_linux:  "6d5a83a4d57e60e57453b122084e735581b629c26f62bf363014d2ad42ae43d5",
         x86_64_linux: "c8274c037457a33a631d44366b8430789450874a2fa56df77d6802f0bbdc6bc6"

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

cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.10.0"
  sha256 arm:          "6da2e0e854bce43f0817247cc5bbaea8f09a3dcc12bc4a1b3f80dba2451e2702",
         intel:        "6da2e0e854bce43f0817247cc5bbaea8f09a3dcc12bc4a1b3f80dba2451e2702",
         arm64_linux:  "984ca742b73f6c6a3c7876b9a2e81207dfb71ee8ddbfd8490c2144af597512f0",
         x86_64_linux: "7873182c5cba651305fc9f74013e53637f6ad2ea818f877e2d1a5c04add9e361"

  on_macos do
    app "FilmCraft.app"

    zap trash: "~/Library/Application Support/FilmCraft"
  end
  on_linux do
    app_image "filmcraft-#{version}-linux-#{arch}.AppImage", target: "FilmCraft.AppImage"
  end

  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-#{version}-#{url_end}"
  name "FilmCraft"
  desc "Video editor"
  homepage "https://getartcraft.com/apps/filmcraft"
end

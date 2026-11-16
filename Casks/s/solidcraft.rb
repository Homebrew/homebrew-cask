cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.43.0"
  sha256 arm:          "0e9870f868c7b73c2b610d9ddbbcca91a63163d86743bcafe7c4cda75ea4bad2",
         intel:        "0e9870f868c7b73c2b610d9ddbbcca91a63163d86743bcafe7c4cda75ea4bad2",
         arm64_linux:  "ae3cc7b28ec5f82bc00bc826e6d37bb125a7ab1fe00d62c5518de1c8c26dbf6e",
         x86_64_linux: "b37d01cc885ea116c8a9d9243aa08cb21e616f3b50e1d6656e6a7be92ff49896"

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

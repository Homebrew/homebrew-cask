cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.24.0"
  sha256 arm:          "2c2ea4330623c2038cc6235d97454ec1d178d4e466e13daeac0dd49c13a4fc77",
         intel:        "2c2ea4330623c2038cc6235d97454ec1d178d4e466e13daeac0dd49c13a4fc77",
         arm64_linux:  "8f994489ba34d58a646039471f06641b380d74e81824560bd0132c7b20ab2a60",
         x86_64_linux: "a09729e09d4098164bc30add428949789cdbba67abd55d5c22158be17a0e2026"

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

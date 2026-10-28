cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.25.1"
  sha256 arm:          "ecab992c83ec6b423195fb8eebf19bec189bb793051ccdc20690cc5d6f798f17",
         intel:        "ecab992c83ec6b423195fb8eebf19bec189bb793051ccdc20690cc5d6f798f17",
         arm64_linux:  "a2bbce18082fb7e34e6b10b6a10e64a9b3ac17c1523f8ecf5ff32828f0e9f371",
         x86_64_linux: "e968d1f151baca521900779158b1a9e05394c17410d55e11458063e07a78bede"

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

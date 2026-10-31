cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.28.0"
  sha256 arm:          "d83f509e337585290ae8dfe592176819a811e9f79f89983c8457b3aa434adb5f",
         intel:        "d83f509e337585290ae8dfe592176819a811e9f79f89983c8457b3aa434adb5f",
         arm64_linux:  "f0ddacdc0cf1c83d69929e9b57fc09db58d271bfb431ac6f358680ead7a59b89",
         x86_64_linux: "a02c4149faeced84a421add8a292a8702a71ef5e7377c9d6c082169e1257f453"

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

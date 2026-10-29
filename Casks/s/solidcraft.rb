cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.26.0"
  sha256 arm:          "2a62e0c7e9dce45cb6ee6fa1ebe322110a0d234da1b820f31bf920e2512e8b24",
         intel:        "2a62e0c7e9dce45cb6ee6fa1ebe322110a0d234da1b820f31bf920e2512e8b24",
         arm64_linux:  "172ac0081cdf0bb6538a0f56fa1a9680d35e7e330f8c0c4d1d129f1b94add4e3",
         x86_64_linux: "abe268d1ad9143943408d0d0f9c3c73013d11063bde042f47f81dffd2ce8b431"

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

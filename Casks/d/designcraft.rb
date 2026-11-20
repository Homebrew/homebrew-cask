cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.1"
  sha256 arm:          "f45b2bf5543c1d8c37d09a971e99420d6ef3d97b6ebe33e31b36d2a3c39eb0c2",
         intel:        "f45b2bf5543c1d8c37d09a971e99420d6ef3d97b6ebe33e31b36d2a3c39eb0c2",
         arm64_linux:  "14e6412cc8b15633571c0b09869b89f23ea2ac61b3e6819b3b26284e92b68693",
         x86_64_linux: "f9d6fd6bb1a421850243c0d4be44235713a9ec5b26f8bf1d5ba87afcf8f91534"

  on_macos do
    app "DesignCraft.app"

    zap trash: "~/Library/Application Support/DesignCraft"
  end
  on_linux do
    app_image "designcraft-#{version}-linux-#{arch}.AppImage", target: "DesignCraft.AppImage"

    zap trash: [
      "~/.config/designcraft",
      "~/.local/share/designcraft",
    ]
  end

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "DesignCraft"
  desc "Page layout and publishing tool"
  homepage "https://getartcraft.com/apps/designcraft"
end

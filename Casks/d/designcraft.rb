cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.1"
  sha256 arm:          "c8520b8fa702e19436c06269792e68a3ca09a629c6d5cb59193355ef3e89ec52",
         intel:        "c8520b8fa702e19436c06269792e68a3ca09a629c6d5cb59193355ef3e89ec52",
         arm64_linux:  "6aa239aef20a856ed81f16b976e5c3a22076ff6407ede4a0dae35fb616e3b6ce",
         x86_64_linux: "4fbb5d2d2c2f1d67fb7e131e54a8545310c489258ca5a2d5509a7a2c5d3fa59b"

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

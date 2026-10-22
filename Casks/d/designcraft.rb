cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.0"
  sha256 arm:          "1e5cdc6c8508a66150c0a7aa68b02a9d78ac32d739d7322d4094217f0574d4de",
         intel:        "1e5cdc6c8508a66150c0a7aa68b02a9d78ac32d739d7322d4094217f0574d4de",
         arm64_linux:  "7d638a98f96a2ada627c0c3e8d475ce47abdd441f48ec8fc9834202fc372a2fb",
         x86_64_linux: "7d76c43f90017e1e83982155bd057864487f4c68ac7cc65731334d90ef51ed9a"

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

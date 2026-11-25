cask "block-buzz" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.30"
  sha256 arm:          "7d37466df49d7899c49dcd58887ca59e3071e91806b7f9d17ca924a61bc14f07",
         intel:        "d6237a4451a7c4824b2b3d7c4058a99ee7fd960ee729c73b3ddf8f6afabba12e",
         x86_64_linux: "00065cd75d1340f0ee7066a680e5208a6957c389a3aaecc182f4f073aa16cd9a"

  on_macos do
    conflicts_with cask: "buzz"

    app "Buzz.app"

    uninstall quit: "xyz.block.buzz.app"

    zap trash: [
          "~/.local/bin/buzz",
          "~/Library/Application Support/xyz.block.buzz.app",
          "~/Library/Caches/xyz.block.buzz.app",
          "~/Library/WebKit/xyz.block.buzz.app",
        ],
        rmdir: "~/.buzz"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Buzz_#{version}_#{arch}.AppImage", target: "Buzz.AppImage"

    zap trash: [
          "~/.local/bin/buzz",
          "~/.local/share/xyz.block.buzz.app",
        ],
        rmdir: "~/.buzz"
  end

  url "https://github.com/block/buzz/releases/download/desktop-v#{version}/Buzz_#{version}_#{arch}.#{os}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"
end

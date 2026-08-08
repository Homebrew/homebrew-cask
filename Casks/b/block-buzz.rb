cask "block-buzz" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.7"

  on_macos do
    sha256 arm:   "9b2186c6843d726e365908054879a24b7d383b85c7ea02e14c474ad5824beff9",
           intel: "e2f6dea5aa2fa3c5bc4fc43ead23afa163b7da59ba4c91996c17f0b99c7d00ba"

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
    sha256 "c49e71af7fc8e5ecfea8cc65c9cf222d2f484b1e129476f767bdb260d81c7037"

    depends_on arch: :x86_64

    app_image "Buzz_#{version}_#{arch}.AppImage", target: "Buzz.AppImage"
  end

  url "https://github.com/block/buzz/releases/download/desktop-v#{version}/Buzz_#{version}_#{arch}.#{os}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"
end

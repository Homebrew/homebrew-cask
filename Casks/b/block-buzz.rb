cask "block-buzz" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.17"

  on_macos do
    sha256 arm:   "f40839c6e15cfaefb087f7de0cb085da41d5ab2ea70843730795385fb15c4891",
           intel: "dbfa4423820d4bfc63b31123744567dd5d9ffa2bd02cfd983cea81255e8922cb"

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
    sha256 "bb09583c68735cab8f5f5f411f6b717ca09a68b67b7dad40dd35c1ec5ac4ff54"

    depends_on arch: :x86_64

    app_image "Buzz_#{version}_#{arch}.AppImage", target: "Buzz.AppImage"
  end

  url "https://github.com/block/buzz/releases/download/desktop-v#{version}/Buzz_#{version}_#{arch}.#{os}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"
end

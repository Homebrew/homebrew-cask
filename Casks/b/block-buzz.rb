cask "block-buzz" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.20"

  on_macos do
    sha256 arm:   "0471456eaa7c3a4ab83ed93cc75d14b21eb57032f96bf2cfa49c0f9fa847bde6",
           intel: "bb6c955f1f809aa8dcb166b8ed66f92e98bb9791be4b09ee4f5a094f09723d1e"

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
    sha256 "8faaaf04eca01c0e6c15e69d373482775477a6e6f777a9eb98ea1fe9de94b7ce"

    depends_on arch: :x86_64

    app_image "Buzz_#{version}_#{arch}.AppImage", target: "Buzz.AppImage"
  end

  url "https://github.com/block/buzz/releases/download/desktop-v#{version}/Buzz_#{version}_#{arch}.#{os}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"
end

cask "block-buzz" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"

  artifact = on_system_conditional linux: "Buzz_#{version}_amd64.AppImage",
                                   macos: "Buzz_#{version}_#{arch}.dmg"

  url "https://github.com/block/buzz/releases/download/v#{version}/#{artifact}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"

  on_macos do
    sha256 arm:   "a096767f08f5528d780335b58b4bebc948becaa8855c5093107edf16e45a497c",
           intel: "7beec2b49fef0c7d5f976d65a5960560322912f3426877fea96f9a9175de51f7"

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
    sha256 "aecd02d92afe5c5aa2c86f44f4b321be08c149a9d24f1dc5905a03737595ec69"

    depends_on arch: :x86_64

    app_image artifact, target: "Buzz.AppImage"
  end
end

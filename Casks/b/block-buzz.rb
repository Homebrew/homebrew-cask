cask "block-buzz" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.26"

  artifact = on_system_conditional linux: "Buzz_#{version}_amd64.AppImage",
                                   macos: "Buzz_#{version}_#{arch}.dmg"

  url "https://github.com/block/buzz/releases/download/v#{version}/#{artifact}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"

  on_macos do
    sha256 arm:   "abc60e0e44c9bc9b0ce7d668651a955a87cf95390f66bb9b71d36f9c0e5c25a3",
           intel: "fa7c94c41a535295535a772fc5751fe478deea8caae3fe19268c28f7153d07d1"

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
    sha256 "5ce7a56ee51db66c3d219f4f95bd92021fc689563ea6a425441751f68582820f"

    depends_on arch: :x86_64

    app_image artifact, target: "Buzz.AppImage"
  end
end

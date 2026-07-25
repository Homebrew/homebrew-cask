cask "block-buzz" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.25"

  artifact = on_system_conditional linux: "Buzz_#{version}_amd64.AppImage",
                                   macos: "Buzz_#{version}_#{arch}.dmg"

  url "https://github.com/block/buzz/releases/download/v#{version}/#{artifact}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"

  on_macos do
    sha256 arm:   "582f580c5baac5d09c6dc545e5285f6f336f275e4245ab293d17ae8d6b4ccd92",
           intel: "3903c8e35bb06f78d3f12be3a6e96cdbf6731586c55b9a8504ba9f15081d9f8c"

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
    sha256 "ed53225bc2a30ed29d19fdf9724ba3bd4520277b7cdf129c722534475084a78f"

    depends_on arch: :x86_64

    app_image artifact, target: "Buzz.AppImage"
  end
end

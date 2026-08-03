cask "block-buzz" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.4"

  on_macos do
    sha256 arm:   "1b8df3e3e781eb9a37eed02a58d48c474c2c4d04c42388513351320c76eeac82",
           intel: "28108389f57e7d607bf278bb87f5f09c9855a880ce261162e8b51cec72c1eb4c"

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
    sha256 "021a3fc70133264f5e0c5b44d92626b75120b1d9b64443acb576ba8d8c009cc1"

    depends_on arch: :x86_64

    app_image "Buzz_#{version}_#{arch}.AppImage", target: "Buzz.AppImage"
  end

  url "https://github.com/block/buzz/releases/download/desktop-v#{version}/Buzz_#{version}_#{arch}.#{os}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"
end

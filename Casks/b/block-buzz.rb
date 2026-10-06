cask "block-buzz" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.27"
  sha256 arm:          "7a1a086482219c50cd6be51348cc571f6243f0db6483b963826f09cd3de0b6d9",
         intel:        "c262fd9deb93838f93e1278d1a49270e434c7b8fc89b39c02732a074dab9e5e2",
         x86_64_linux: "1959452ba9f7c82b8c647d1fc921eb652a90e00772a46abdabdcabd68dad9b28"

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
  end

  url "https://github.com/block/buzz/releases/download/desktop-v#{version}/Buzz_#{version}_#{arch}.#{os}"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"
end

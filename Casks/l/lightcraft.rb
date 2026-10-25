cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "cde8591da93f7b5aa7ad09137cc93c1ebf3b4748fe89e477bb036263d7c93e75",
         intel:        "cde8591da93f7b5aa7ad09137cc93c1ebf3b4748fe89e477bb036263d7c93e75",
         arm64_linux:  "2f1dad8abb22d472996d087a0a0fc5eee3b70ff9b8d3a36a35abf7245cb1fe3c",
         x86_64_linux: "d6e02cc2da7afb11602f6ec08f0ac8a60d73070a54960680e97b92a0a17d3d77"

  on_macos do
    app "LightCraft.app"

    zap trash: "~/Library/Application Support/LightCraft"
  end
  on_linux do
    app_image "lightcraft-#{version}-linux-#{arch}.AppImage", target: "LightCraft.AppImage"

    zap trash: "~/.config/lightcraft"
  end

  url "https://github.com/storytold/lightcraft/releases/download/v#{version}/lightcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "LightCraft"
  desc "Photo library manager and raw image developer"
  homepage "https://getartcraft.com/apps/lightcraft"
end

cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.21.1"
  sha256 arm:          "b70f46cac01390154c9adfa06822e6691b95fc270c507b0ed220a00dc588bb1e",
         intel:        "b70f46cac01390154c9adfa06822e6691b95fc270c507b0ed220a00dc588bb1e",
         arm64_linux:  "b446816baa6bc41501e9e705c6e757a859bc103a6348aec13e838cb376dc6e22",
         x86_64_linux: "c4212da22777a0000d9eb66c85b7865e9e9911f47a60207d7852b7c063ada8a9"

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

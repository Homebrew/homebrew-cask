cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.0"
  sha256 arm:          "f3cb326a202a2d6f89bd2d08ccd8b108e8efe103bb9da88c2a38e52a29f93e5a",
         intel:        "f3cb326a202a2d6f89bd2d08ccd8b108e8efe103bb9da88c2a38e52a29f93e5a",
         arm64_linux:  "ad513f25b43ba55b6c67ab9daf3f3bb90f8eaca43f30d4c3745bc299246236d5",
         x86_64_linux: "f71606e446ff32cae9cdd050c51dd60202a97c116658f026ace6934a1d028b76"

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

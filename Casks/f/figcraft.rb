cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.0"
  sha256 arm:          "21c9ff7463d459f80fc8db9e8e4cb12dc5ef4298e9066493b9d1c3ca9da65ff7",
         intel:        "21c9ff7463d459f80fc8db9e8e4cb12dc5ef4298e9066493b9d1c3ca9da65ff7",
         arm64_linux:  "e34a40425b1736a7f73c3585312404e53c7a37601cc17f9108aa9a5e976814b4",
         x86_64_linux: "909599e0e7612d7f85144f685d80e20d285a3295ffa6c5c106b60be3d9dea58a"

  on_macos do
    app "FigCraft.app"

    zap trash: "~/Library/Application Support/FigCraft"
  end
  on_linux do
    app_image "figcraft-#{version}-linux-#{arch}.AppImage", target: "FigCraft.AppImage"

    zap trash: "~/.config/FigCraft"
  end

  url "https://github.com/storytold/figcraft/releases/download/v#{version}/figcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "FigCraft"
  desc "Interface design and prototyping tool"
  homepage "https://getartcraft.com/apps/figcraft"
end

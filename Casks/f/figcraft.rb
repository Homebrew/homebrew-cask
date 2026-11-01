cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "e80f7fce009b76d5565d5bb9e4e5f0b88c7c3d94675eccaff52f2640e6bbaad5",
         intel:        "e80f7fce009b76d5565d5bb9e4e5f0b88c7c3d94675eccaff52f2640e6bbaad5",
         arm64_linux:  "edd95036ab7168e3f07b19463bad5cf4b433ee279bd4e28a15414b5f2d677df6",
         x86_64_linux: "8f5318f1000b4f7e3a77895e8c5db0361d56306ac2bc13e60b2d2369a2d0db47"

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

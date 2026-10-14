cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.1"
  sha256 arm:          "4fa3323b58646e6b6008d11e90c47bd169d7002f36f83f62ec15feaf2b0b1e37",
         intel:        "4fa3323b58646e6b6008d11e90c47bd169d7002f36f83f62ec15feaf2b0b1e37",
         arm64_linux:  "d38427313649df4289c74e8c666821066815feb88b988551576f644d0b340f04",
         x86_64_linux: "ee44890974cad9e67aed438bcd03f5cbeff35149f548887d7b18fe3f80adf484"

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

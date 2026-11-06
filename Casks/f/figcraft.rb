cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "8ab18e498d557962c154e97848b650270d3fbfbcd4d606ffc285f6ebd5a159b1",
         intel:        "8ab18e498d557962c154e97848b650270d3fbfbcd4d606ffc285f6ebd5a159b1",
         arm64_linux:  "2f8362617b149649667dcb4b9eb60379801e771f57de588f737241a8a673ffb4",
         x86_64_linux: "c652030a574e730ff571ef795c305af26faa87475745f1a3e553ae6a39706675"

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

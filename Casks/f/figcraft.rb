cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.1"
  sha256 arm:          "87a2d8bbc06c09bfb50541269769943d7ef2498425310615f0c749741d54259d",
         intel:        "87a2d8bbc06c09bfb50541269769943d7ef2498425310615f0c749741d54259d",
         arm64_linux:  "1e9de7d57b2f313354dddf8ea98b3fd5f03bfcb30ce7c2cf38efc65c78f895ad",
         x86_64_linux: "2fa44efdf4878dea7eb79b1227f274bccb298aab6431d78d0e8370ea6c125474"

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

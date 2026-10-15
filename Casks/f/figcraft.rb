cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.6.0"
  sha256 arm:          "26385f23a95190458081c20efac0c1d86546b899ccbdabc7364f396dcacc7cc4",
         intel:        "26385f23a95190458081c20efac0c1d86546b899ccbdabc7364f396dcacc7cc4",
         arm64_linux:  "8d4f6c2fccb128cee7d85c3ee85b0cfad3d6cf12c681e44cbd73ffd8cd50be28",
         x86_64_linux: "600f115ddc6d9e75f0720c0d9c5449c15b33fde276e080f013bb449ed1da4553"

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

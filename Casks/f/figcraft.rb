cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.1"
  sha256 arm:          "e843212fb1b4c6ed565bcf954dce7ac5ca6038daa430f58e232e628045e841f9",
         intel:        "e843212fb1b4c6ed565bcf954dce7ac5ca6038daa430f58e232e628045e841f9",
         arm64_linux:  "376bfefe6e596775287ca29df1e437d43891d954559a5b6ed372e60cf28ffa60",
         x86_64_linux: "c52be046d7bea73790f3584ffca6ec7935df229adce8f8e483b03242ee2aab1f"

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

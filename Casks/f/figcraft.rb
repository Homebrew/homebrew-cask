cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.0"
  sha256 arm:          "161283ed574f078ee2a2249c3d07e059bc88e4881c2e08217b57df1eed60225d",
         intel:        "161283ed574f078ee2a2249c3d07e059bc88e4881c2e08217b57df1eed60225d",
         arm64_linux:  "a4a9481bc37980b542267f87bd06640d2b419904982b5e65ebc0830e382ccba4",
         x86_64_linux: "33e26f9952e6f66e907256c56619a8f75ebc2a61fc3c78fc3396dae210bd3c85"

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

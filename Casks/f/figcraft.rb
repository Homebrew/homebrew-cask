cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"
  sha256 arm:          "59bd526225f16bb6afd34c2ac3bb88079169122f6a4506181d606910263c798b",
         intel:        "59bd526225f16bb6afd34c2ac3bb88079169122f6a4506181d606910263c798b",
         arm64_linux:  "0f4dbc66c76ac2aaaad8e92ef4586fc79485e540fdf663a4baa067888e7872f7",
         x86_64_linux: "a749d9f8074cbd2dc7d04a16d47262001a2528391fa153bd6c5c4e4f84c8e414"

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

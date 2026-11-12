cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.0"
  sha256 arm:          "bc0fd41e20156c4dfcf1b91c05776e6d5600959958ffdd03b801edda4d1277e5",
         intel:        "bc0fd41e20156c4dfcf1b91c05776e6d5600959958ffdd03b801edda4d1277e5",
         arm64_linux:  "4d920f4ac8a76f708a8eaa29a1caa373b3633c73ae5cedddb297a319bca16072",
         x86_64_linux: "0b7ae3c415598a5762c57f5fed01b7737f487d9bcf53995968a5b65a254df22d"

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

cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.0"
  sha256 arm:          "7d0ea44bd587a9cb34ac786d0045cb8d73400fe38a9c108ae40327c865ed4e00",
         intel:        "7d0ea44bd587a9cb34ac786d0045cb8d73400fe38a9c108ae40327c865ed4e00",
         arm64_linux:  "be158d0fc131d2b549d898f99f435afc64b84b390341f39a4ae6ac386b964485",
         x86_64_linux: "47d0fde4fc2ba28d1e6cb484ae8f3134325f58458c0d8c289a411b8683e3217a"

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

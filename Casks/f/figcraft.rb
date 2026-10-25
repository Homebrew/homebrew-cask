cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.2"
  sha256 arm:          "2a626afa9c65ad96a3d1eaaf8ef5fca4654b8a6b000d1c8a3a4c1ccc7c4376bc",
         intel:        "2a626afa9c65ad96a3d1eaaf8ef5fca4654b8a6b000d1c8a3a4c1ccc7c4376bc",
         arm64_linux:  "d9743d61d1cfb262e93267984e111f643964e03c8289720a9fedc872f23ddda9",
         x86_64_linux: "dd92da8d9b3ec259f81cea3308b1b3961a0579b437ed7f55e8a0a58466a8a986"

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

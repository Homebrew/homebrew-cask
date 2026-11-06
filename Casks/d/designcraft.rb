cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.0"
  sha256 arm:          "0c24487389b1c8710c44e005d352ddf9919adaaefcf78a53bc522ea225ffe225",
         intel:        "0c24487389b1c8710c44e005d352ddf9919adaaefcf78a53bc522ea225ffe225",
         arm64_linux:  "61a21b74d56e66292bfa22e04580c15334d399727d1f67c8635d42d9aec20bd0",
         x86_64_linux: "013640920f00af2a4fca09c1bcd44d97bd404f68e1bd8665377335f2c12c20d3"

  on_macos do
    app "DesignCraft.app"

    zap trash: "~/Library/Application Support/DesignCraft"
  end
  on_linux do
    app_image "designcraft-#{version}-linux-#{arch}.AppImage", target: "DesignCraft.AppImage"

    zap trash: [
      "~/.config/designcraft",
      "~/.local/share/designcraft",
    ]
  end

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "DesignCraft"
  desc "Page layout and publishing tool"
  homepage "https://getartcraft.com/apps/designcraft"
end

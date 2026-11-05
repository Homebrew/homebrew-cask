cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.2"
  sha256 arm:          "4dafd1020e857c20d324d46225537da2dc7a6f91b202ae373ee367ec8c971951",
         intel:        "4dafd1020e857c20d324d46225537da2dc7a6f91b202ae373ee367ec8c971951",
         arm64_linux:  "edd78c5bee9decebdc5338bae89637b958ff5e30dbccb83cf26905ec9d78ea66",
         x86_64_linux: "30e9d2a5ab322bee47980010ab68a1681061d9a9700ea989a33da54f0839730f"

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

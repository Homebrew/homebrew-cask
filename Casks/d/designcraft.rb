cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.0"
  sha256 arm:          "39f2a45f825416c46a0328cd26003a86b8f0963feca36c446bfb20e0b8190b78",
         intel:        "39f2a45f825416c46a0328cd26003a86b8f0963feca36c446bfb20e0b8190b78",
         arm64_linux:  "79a7018c2ea13ee75ef486eba7ab26eb5e8cda87ee9f93bed79749a98ae9a54b",
         x86_64_linux: "e8220d7e417790e1528dc84d4db5fb2293dd0327e62ee29f8ca03f092801e9a5"

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

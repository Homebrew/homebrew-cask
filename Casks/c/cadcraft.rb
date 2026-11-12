cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.1"
  sha256 arm:          "c9ef1cf02234e6a5e854287a64fe314ad6d53227915c3c6664fa4161e2a1fe70",
         intel:        "c9ef1cf02234e6a5e854287a64fe314ad6d53227915c3c6664fa4161e2a1fe70",
         arm64_linux:  "9c725b9d8a4d2b09bad06175c51cbba4f95b718b6c70c3de35faa4a007e4a921",
         x86_64_linux: "e7a5d244500fe45ccabfa85c632c25ecda1fb03799c318d9ad541f65b150e78f"

  on_macos do
    app "CADCraft.app"

    zap trash: [
      "~/Library/Application Support/ai.storyteller.cadcraft",
      "~/Library/Application Support/CADCraft",
      "~/Library/Preferences/ai.storyteller.cadcraft.plist",
      "~/Library/Saved Application State/ai.storyteller.cadcraft.savedState",
    ]
  end
  on_linux do
    app_image "cadcraft-#{version}-linux-#{arch}.AppImage", target: "CADCraft.AppImage"

    zap trash: [
      "~/.config/cadcraft",
      "~/.local/share/ai.storyteller.cadcraft",
    ]
  end

  url "https://github.com/storytold/cadcraft/releases/download/v#{version}/cadcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "CADCraft"
  desc "Computer-aided design and drafting tool"
  homepage "https://github.com/storytold/cadcraft"
end

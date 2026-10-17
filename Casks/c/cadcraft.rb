cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.0"
  sha256 arm:          "a2e37617aa675c955e1ee97d1efb9c3e1ce4dcaec705c7083d695cdd3ef236b7",
         intel:        "a2e37617aa675c955e1ee97d1efb9c3e1ce4dcaec705c7083d695cdd3ef236b7",
         arm64_linux:  "8c745bff42ac94f784d228f03a8f1d733f029b09f2771d69073690532d08485e",
         x86_64_linux: "b2aa2807c886e1bae7b0064f47688a62ed6fe1fa05f05b352e362cdc698f0b77"

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
  end

  url "https://github.com/storytold/cadcraft/releases/download/v#{version}/cadcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "CADCraft"
  desc "Computer-aided design and drafting tool"
  homepage "https://github.com/storytold/cadcraft"
end

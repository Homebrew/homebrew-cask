cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"
  sha256 arm:          "15619c88a1bb7e0149f03e770691ccbf1f479e05dd1ff6f75f416d61e55b1bd9",
         intel:        "15619c88a1bb7e0149f03e770691ccbf1f479e05dd1ff6f75f416d61e55b1bd9",
         arm64_linux:  "61fbfd91f508e195150767a01099fef118ea7f474d29d177799bc70e9de1fb99",
         x86_64_linux: "0d1a8e9aa7987b95406d0972475d4fae8efd22ae4deedfbb3a9dce26c17443ec"

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

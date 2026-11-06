cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.0"
  sha256 arm:          "e59d98615fcecc9d5ef0650c63486229d7d2aa22914fb8d1050a5d071329f9c9",
         intel:        "e59d98615fcecc9d5ef0650c63486229d7d2aa22914fb8d1050a5d071329f9c9",
         arm64_linux:  "be78b1a9851a62a97a4c66af3f2447640ec9afaec446d0551def80dc4878ac7c",
         x86_64_linux: "cec4ccfe5b11c9ada64488e6f2a673de72d30e354cab19e6b13bfce402601827"

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

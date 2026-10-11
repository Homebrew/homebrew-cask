cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.0"
  sha256 arm:          "f7c9a84707eae58405d8930764abfddacb89531571d63a4a49d9b9b735f6f8a7",
         intel:        "f7c9a84707eae58405d8930764abfddacb89531571d63a4a49d9b9b735f6f8a7",
         arm64_linux:  "e4333d6798eb58cf7ceb7818bab0f206b64b0617e3969bf2b677105594956656",
         x86_64_linux: "d29756693af2b1c44115dfda67b73d051f9d65e9e36852926744b5f312ae85c6"

  on_macos do
    app "CADCraft.app"

    zap trash: [
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

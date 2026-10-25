cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.0"
  sha256 arm:          "539f27c1fa2fe79fe2f1c562fe9eb07b1790ffd2cd7bf1e438e9c719383aeb29",
         intel:        "539f27c1fa2fe79fe2f1c562fe9eb07b1790ffd2cd7bf1e438e9c719383aeb29",
         arm64_linux:  "e1955e281d24a36b9fed23e03120a660ec6cd8e9967c449081f48d91efab3872",
         x86_64_linux: "435ed551849bb0dbd24a0de86b5bb82e9a4e94e06d5890b57a313a7a5fe8d073"

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

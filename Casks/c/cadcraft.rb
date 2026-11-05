cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.1"
  sha256 arm:          "488d97983141c3f1bfabf9342c08c1d64ddd981e8c1a8316b4c0fc97221c1c1c",
         intel:        "488d97983141c3f1bfabf9342c08c1d64ddd981e8c1a8316b4c0fc97221c1c1c",
         arm64_linux:  "2c58afedbe4ee1a6cd28cec3286d8afb40465b5707ea8f13bc87c8651c6f0a79",
         x86_64_linux: "23e5cfce321c8adbcc56db81ffa2e47ed9dfa444918dbbaaa362d678100f9e59"

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

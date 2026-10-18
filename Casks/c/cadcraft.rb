cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.8.0"
  sha256 arm:          "518c8f38df85112ae37b62778d6b4b4d3e85dbf922cac5737d4765d508b77ee1",
         intel:        "518c8f38df85112ae37b62778d6b4b4d3e85dbf922cac5737d4765d508b77ee1",
         arm64_linux:  "a1982b4611b0bbb80b8e9c53602391890d638259aea3c20394a197cacb0cf654",
         x86_64_linux: "24f77e372bf07233f72672458bc69135d54bc9f6bb6379ed737870a7c1152bd2"

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

cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "6417b10c317418e50b4f5bf7c90eb7066aca18e29d32763bc7b3a5cce5bec394",
         intel:        "6417b10c317418e50b4f5bf7c90eb7066aca18e29d32763bc7b3a5cce5bec394",
         arm64_linux:  "7cb1fc25fe88e6f5c5ac1217d26136be7fd54fae5cc440873589c1d28c2ac4c7",
         x86_64_linux: "f26c2c05da223c3189d08c50ac431b9d0738622a4b3d8b4435cb7eca99caa607"

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

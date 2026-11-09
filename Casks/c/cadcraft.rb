cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.0"
  sha256 arm:          "d3a3c2dc5fe9945babfaa420716602812c3c3cec8b0fb3ab2502ef5e78b960b3",
         intel:        "d3a3c2dc5fe9945babfaa420716602812c3c3cec8b0fb3ab2502ef5e78b960b3",
         arm64_linux:  "8c3d8c37d44e9f815989fb1f664d06eb9a55814ba316d0acd6c2bef75e3ae1d6",
         x86_64_linux: "019d0a4aba1550faf91624e8d3af3adf8e27fee1997579b54f985f693395baf9"

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

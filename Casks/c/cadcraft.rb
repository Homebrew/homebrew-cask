cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.0"
  sha256 arm:          "f227cd05f056455654ce08a8ea646f6166eb610ba033e7635a0638d2ad2fa402",
         intel:        "f227cd05f056455654ce08a8ea646f6166eb610ba033e7635a0638d2ad2fa402",
         arm64_linux:  "d5d133d69b9590f0df0f7638b35812bcf2d5b0ff826f0aa511e93fd6154d6ac6",
         x86_64_linux: "732d3f2f85945d50bac9fbbf3d64e0bf974ac593d2f3344af1727273a29e53aa"

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

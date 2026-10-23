cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.0"
  sha256 arm:          "cb525bc316a6e82abf9fb904553953aef2424185701227f8478f62be50c793b8",
         intel:        "cb525bc316a6e82abf9fb904553953aef2424185701227f8478f62be50c793b8",
         arm64_linux:  "8421fa90e4602e34761b01cce993a8a009d102ed4328ab73326859fff728bef7",
         x86_64_linux: "e8514bb688d03cfa60df654adc5706a4425b046036e873c685e0dd2fa47e9b73"

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

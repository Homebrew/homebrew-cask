cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.6.2"
  sha256 arm:          "f8255281d824a1a8b0f051f7d11e41a786ab081d8873f517ae64bbb7e1a14c8c",
         intel:        "f8255281d824a1a8b0f051f7d11e41a786ab081d8873f517ae64bbb7e1a14c8c",
         arm64_linux:  "0a00a4270f8d012de3b2adbf072cc040d7dc472417df065bf156884e5e638998",
         x86_64_linux: "32daada11b9b6e512e72aa071cebf3caf17f741b85f094749bff39ad36036ad1"

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

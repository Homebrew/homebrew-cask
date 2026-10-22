cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.0"
  sha256 arm:          "f5be9adce05760e666396f67a7499ed72658fef0ece5ea88ff310c60ffb78603",
         intel:        "f5be9adce05760e666396f67a7499ed72658fef0ece5ea88ff310c60ffb78603",
         arm64_linux:  "4b016c05e84f2d6e86e741e6d6ab1a75bd1214229e77974b8a86de3e0452a279",
         x86_64_linux: "7952a9f938448f2ca379474b6003a52a8ced333141aacb237a4e54ae7e95f8c1"

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

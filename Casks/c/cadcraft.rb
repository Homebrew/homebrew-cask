cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.1"
  sha256 arm:          "4393e64928f8a7de65be85b5e70980f96bc03763661fd0e35471221e7322b98e",
         intel:        "4393e64928f8a7de65be85b5e70980f96bc03763661fd0e35471221e7322b98e",
         arm64_linux:  "b607b93d3eb923af5cb3bb6e7b08a915c5123263e8e13cd64b02f50e43e657e4",
         x86_64_linux: "88ae616958413b8fa56259df6f70fb695ab90b472e4c63cf955ae6a6471bb11d"

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

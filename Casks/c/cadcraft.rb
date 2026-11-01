cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "cb7f871731e495cefec003a412550c12ef67a1510f61e45f7dffa7edfe805bbe",
         intel:        "cb7f871731e495cefec003a412550c12ef67a1510f61e45f7dffa7edfe805bbe",
         arm64_linux:  "0d168dc1e7a38dd3843e77cb77fb06fee2ff308838e2d7f91172afb947c5e7fc",
         x86_64_linux: "0746fce592f8e6edfcce411590ae8e10f2f6846b35f765e63bb1071ee8c8eea8"

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

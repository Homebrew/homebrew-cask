cask "cadcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "05aae1cc33745c0cd4171e74e05971d625b29884bb49e007031a42ae1adc02d2",
         intel:        "05aae1cc33745c0cd4171e74e05971d625b29884bb49e007031a42ae1adc02d2",
         arm64_linux:  "1c09e2f8db7bbe6b709d0a5eca607e753fcb266b54e8fa83b7e7c03f9ac94bfc",
         x86_64_linux: "d054e5769ee18134698d0773476871cadd89491a91523c3eb258a82626bb99e7"

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

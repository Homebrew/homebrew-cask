cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.15.1"
  sha256 arm:          "bfef3703ddfe4c2fb591419d7a1937483e3de2804448a7f262965f3c5dcdc93b",
         intel:        "bfef3703ddfe4c2fb591419d7a1937483e3de2804448a7f262965f3c5dcdc93b",
         arm64_linux:  "d8eb23109cad4c423f345b8e503631e65be8ef8d5a8eef5e9ebba1697fa13a5e",
         x86_64_linux: "f9557d153189597839a456133dcf97272baac152031871fad0aec3b6d6560785"

  on_macos do
    app "DeckCraft.app"

    zap trash: "~/Library/Application Support/DeckCraft"
  end
  on_linux do
    app_image "deckcraft-#{version}-linux-#{arch}.AppImage", target: "DeckCraft.AppImage"

    zap trash: "~/.config/deckcraft"
  end

  url "https://github.com/storytold/deckcraft/releases/download/v#{version}/deckcraft-#{version}-#{url_end}"
  name "DeckCraft"
  desc "Presentation editor"
  homepage "https://github.com/storytold/deckcraft"
end

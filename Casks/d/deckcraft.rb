cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.15.0"
  sha256 arm:          "e3ec0d063586842a34865a82b179cbc3048fb4ed3963f38e1518597a297f5f57",
         intel:        "e3ec0d063586842a34865a82b179cbc3048fb4ed3963f38e1518597a297f5f57",
         arm64_linux:  "83623d10bbd5a5302cc22a348149c25a9eb83624eecf70c05f75fe23b9cdbdb6",
         x86_64_linux: "569034a273b69bca9b8373355b92f8f0fe932a1c52b96a81c4488151c68a1999"

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

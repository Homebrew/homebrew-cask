cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.6.1"
  sha256 arm:          "7f9dcb6dc235cc605dfff31a68c4c75fd2ace8a5117cd3b4ef31deaee941619a",
         intel:        "7f9dcb6dc235cc605dfff31a68c4c75fd2ace8a5117cd3b4ef31deaee941619a",
         arm64_linux:  "72523202a8dc07577af0b417973e3ed47723b999dfe8e94437a66cb7e7573619",
         x86_64_linux: "821650d3f87a7212306f33b8b7b05cf19d13390a31359ef3b74a3c33cf18ed21"

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

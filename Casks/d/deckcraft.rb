cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.16.0"
  sha256 arm:          "e9cf0eee693866a359e6905abcb30bb688dbaf57d604145d5668f1849b8ba247",
         intel:        "e9cf0eee693866a359e6905abcb30bb688dbaf57d604145d5668f1849b8ba247",
         arm64_linux:  "167e86a06fc0780823ff5ef6a5052e36d1809cd4e3e35f6726db12b2b4a63b49",
         x86_64_linux: "1211d8b517377eed0fc037d64daef1b75b7ee278e0620ab0d7e7beb6e86183f7"

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

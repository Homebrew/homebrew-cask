cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.14.1"
  sha256 arm:          "377a62fa23989c6dccc4e269e2e1473a534b5b3fe96bac62f0ad962a76225794",
         intel:        "377a62fa23989c6dccc4e269e2e1473a534b5b3fe96bac62f0ad962a76225794",
         arm64_linux:  "ea7f1667cd69708531999e4b80c59f302b176583c44bf356d0510a1e03249589",
         x86_64_linux: "c9e05af251d8ab0b07f6048df81d4181614079569f8aed6380e44c61b5eba635"

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

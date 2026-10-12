cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.5.0"
  sha256 arm:          "9ffaa97a5051dfaf8220a989bb4eec969cc7d3da2373c431ef37d2d4ef1b2c0e",
         intel:        "9ffaa97a5051dfaf8220a989bb4eec969cc7d3da2373c431ef37d2d4ef1b2c0e",
         arm64_linux:  "ad9f726b0ab9590efbef2cd9f34aebeb7bdae58cceb56e063ba333bba4f64d10",
         x86_64_linux: "662f6236a1c0a81c326e80b126afd55dd68dc2a12c33bbc3009f06d9f39b311e"

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

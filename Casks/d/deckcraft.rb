cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.4.0"
  sha256 arm:          "d41169c6c1d0d35229fe66ada3856cd669b8917c82c3571236bdfb9cb24c7f90",
         intel:        "d41169c6c1d0d35229fe66ada3856cd669b8917c82c3571236bdfb9cb24c7f90",
         arm64_linux:  "36cc2a054fa521ba80d9a42d2459fd964fad2728a3dc025326e67b1b7ca4bfc7",
         x86_64_linux: "8db8d0dd1a49ebb295772d89c8767f97fc36765d8342b2afdd6ab7e2723542f9"

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

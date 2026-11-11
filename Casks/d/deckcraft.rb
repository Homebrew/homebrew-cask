cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.0"
  sha256 arm:          "e790955126ec57bbba64495892586f5c1c94489bfc6649381292b4b50077d3c9",
         intel:        "e790955126ec57bbba64495892586f5c1c94489bfc6649381292b4b50077d3c9",
         arm64_linux:  "146d63a830618e8a946c0eaddc7a3e5aee17a31d34ea0b37351923ec1fed412f",
         x86_64_linux: "27303555d559244f48a916d26deb28bc34b8b44f955ff88a00ca15c2345f0eac"

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

cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.12.0"
  sha256 arm:          "feb7e54543c136b349479746b60779cc5bf3e5d8b3d15838156ed16005d253d5",
         intel:        "feb7e54543c136b349479746b60779cc5bf3e5d8b3d15838156ed16005d253d5",
         arm64_linux:  "7d24a225a515d969952500543fe91367a9560f488fb327c86b42f3ef690cb61c",
         x86_64_linux: "296d3e6afc51667a863cb189c2c3972fee6b9c6416484cbe09b0de7f3876ea3a"

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

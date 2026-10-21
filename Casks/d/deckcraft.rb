cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.9.0"
  sha256 arm:          "15957ed499818442a989ec8879d70154266c7c85496171fa150e45ea2c424af9",
         intel:        "15957ed499818442a989ec8879d70154266c7c85496171fa150e45ea2c424af9",
         arm64_linux:  "453fb2159670ab371baeb5fccc44a4d6a57fdd03c564b531ec0b6a4ba57bcaee",
         x86_64_linux: "4506f8d47f44e779b7463a872e0fc35fea99eedf9ceff27601c8c1344b928a05"

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

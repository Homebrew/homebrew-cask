cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.1"
  sha256 arm:          "a5233f28b031b74edc4a07df2a0068d43b82ccadfdac865f145765d28b2ce746",
         intel:        "a5233f28b031b74edc4a07df2a0068d43b82ccadfdac865f145765d28b2ce746",
         arm64_linux:  "548200b8b1adf79c72860a40abe1c6f2d7f4189a4a9475668873b5732d8c4f00",
         x86_64_linux: "8295d0fb795bbd0c7ab8ae97cdf0993e1e6cf14d90aac35aab78b816dcdaa2fe"

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

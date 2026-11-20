cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.1"
  sha256 arm:          "3321d11f6353b3ff9de328f21407d7527f1f9029c83dab4e3ab734f516d3a055",
         intel:        "3321d11f6353b3ff9de328f21407d7527f1f9029c83dab4e3ab734f516d3a055",
         arm64_linux:  "894cb1dc7946918ffe6f0cdce32d9e2157d149faea6737638164083d5e562615",
         x86_64_linux: "68df9f040d3f6c4ce4a904aadec633961fa199248f0a1aa366fa64597ae09867"

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

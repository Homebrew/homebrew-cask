cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.11.1"
  sha256 arm:          "c0b4e89c004b31187832afce312f279f15f5adb7db61808db74608d822726f1d",
         intel:        "c0b4e89c004b31187832afce312f279f15f5adb7db61808db74608d822726f1d",
         arm64_linux:  "7c634421e010858651e258bb4fed59987839336e859f6120357b977b12ae9be8",
         x86_64_linux: "156cb9ef0924bec508524f3a52ba63055a8a74f860bf4588429aefdac6d5fb01"

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

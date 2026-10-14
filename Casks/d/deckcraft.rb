cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.7.0"
  sha256 arm:          "9591b14641d089c1ce36c7f57247e92f0488e90a70d047bb6fa09a12c3453bd9",
         intel:        "9591b14641d089c1ce36c7f57247e92f0488e90a70d047bb6fa09a12c3453bd9",
         arm64_linux:  "6e9086067c3372f5361c9eafb2735dd24ebcdaebb4159cfdd7151ff2509e4354",
         x86_64_linux: "535afd1e7f6d389ecfe78f4a702b5a36719217c4cec556ae5d7f0fd775ae5584"

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

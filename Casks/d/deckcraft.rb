cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.10.0"
  sha256 arm:          "f528bfd0020e4b339750bfabeadc9ec9c1f05b7a6643dead49f156f97e7ad4f2",
         intel:        "f528bfd0020e4b339750bfabeadc9ec9c1f05b7a6643dead49f156f97e7ad4f2",
         arm64_linux:  "df14c740c1409c1cb7cf5f653400276757e9b7ed7ac627fe050f18907509dc04",
         x86_64_linux: "0ecdf59c13f76520e7bc7f6381bea5c8acad7d75af7f390b8748a66fd5ce6c69"

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

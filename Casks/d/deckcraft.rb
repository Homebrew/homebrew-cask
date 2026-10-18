cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.8.0"
  sha256 arm:          "81ee3158cbb550951faf89888bf7f0ea296fc233593aecfc3f41c7d9dce88542",
         intel:        "81ee3158cbb550951faf89888bf7f0ea296fc233593aecfc3f41c7d9dce88542",
         arm64_linux:  "a3ff498caac3bbe8a72297ded63d94cd8f78315a0ffaf30b6af7717ce2df9fd2",
         x86_64_linux: "5c24e0c3d52c710219fb6b897cbf2e856e0f6dd4dc79b7a2cefc1d2d55134ed0"

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

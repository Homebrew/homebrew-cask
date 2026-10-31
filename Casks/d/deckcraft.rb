cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.13.1"
  sha256 arm:          "9e426cea47d78fd371dfff4c9a57bfef1ddfe592c3876e86d79f28bcaae90cc7",
         intel:        "9e426cea47d78fd371dfff4c9a57bfef1ddfe592c3876e86d79f28bcaae90cc7",
         arm64_linux:  "37ce2c3cc2a9dce624964ecff8421fac6acf62a814a334b74dca0b1ca65e9b7d",
         x86_64_linux: "e2cbf93738fcb308fe9cc8422de07fb60905734156dfd56b377fd2a78a918b20"

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

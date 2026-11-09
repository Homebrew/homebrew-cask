cask "deckcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.17.0"
  sha256 arm:          "df61a54297f0222493d5d936c3d5be05f93800b5f0d8d112d805c542e35b8848",
         intel:        "df61a54297f0222493d5d936c3d5be05f93800b5f0d8d112d805c542e35b8848",
         arm64_linux:  "17853c904bad22087cf75d24ac14eee8a97cb28dc9321c2538ba17bcb6655154",
         x86_64_linux: "a03d2f091a541c32b14f4f67de89729d28698dc293f1f9a622f5419d643da597"

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

cask "font-tauri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tauri/Tauri-Regular.ttf"
  name "Tauri"
  homepage "https://fonts.google.com/specimen/Tauri"

  font "Tauri-Regular.ttf"

  # No zap stanza required
end

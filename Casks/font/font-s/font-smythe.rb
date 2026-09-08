cask "font-smythe" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/smythe/Smythe-Regular.ttf"
  name "Smythe"
  homepage "https://fonts.google.com/specimen/Smythe"

  font "Smythe-Regular.ttf"

  # No zap stanza required
end

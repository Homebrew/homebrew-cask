cask "font-unlock" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unlock/Unlock-Regular.ttf"
  name "Unlock"
  homepage "https://fonts.google.com/specimen/Unlock"

  font "Unlock-Regular.ttf"

  # No zap stanza required
end

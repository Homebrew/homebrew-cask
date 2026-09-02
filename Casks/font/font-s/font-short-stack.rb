cask "font-short-stack" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shortstack/ShortStack-Regular.ttf"
  name "Short Stack"
  homepage "https://fonts.google.com/specimen/Short+Stack"

  font "ShortStack-Regular.ttf"

  # No zap stanza required
end

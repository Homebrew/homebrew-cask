cask "font-bentham" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bentham/Bentham-Regular.ttf"
  name "Bentham"
  homepage "https://fonts.google.com/specimen/Bentham"

  font "Bentham-Regular.ttf"

  # No zap stanza required
end

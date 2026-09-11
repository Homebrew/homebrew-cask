cask "font-bilbo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bilbo/Bilbo-Regular.ttf"
  name "Bilbo"
  homepage "https://fonts.google.com/specimen/Bilbo"

  font "Bilbo-Regular.ttf"

  # No zap stanza required
end

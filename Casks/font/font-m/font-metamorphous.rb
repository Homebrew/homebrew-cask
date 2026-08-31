cask "font-metamorphous" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metamorphous/Metamorphous-Regular.ttf"
  name "Metamorphous"
  homepage "https://fonts.google.com/specimen/Metamorphous"

  font "Metamorphous-Regular.ttf"

  # No zap stanza required
end

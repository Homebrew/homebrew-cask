cask "font-allkin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allkin/Allkin-Regular.ttf"
  name "Allkin"
  homepage "https://github.com/googlefonts/allkin"

  font "Allkin-Regular.ttf"

  # No zap stanza required
end

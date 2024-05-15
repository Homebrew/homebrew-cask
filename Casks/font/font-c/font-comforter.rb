cask "font-comforter" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comforter/Comforter-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Comforter"
  desc "Appealing for many usages"
  homepage "https://fonts.google.com/specimen/Comforter"

  font "Comforter-Regular.ttf"

  # No zap stanza required
end

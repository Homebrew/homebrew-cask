cask "font-timmana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/timmana/Timmana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Timmana"
  homepage "https://fonts.google.com/specimen/Timmana"

  font "Timmana-Regular.ttf"

  # No zap stanza required
end

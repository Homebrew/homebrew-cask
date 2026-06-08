cask "font-rationale" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rationale/Rationale-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rationale"
  homepage "https://fonts.google.com/specimen/Rationale"

  font "Rationale-Regular.ttf"

  # No zap stanza required
end

cask "font-ruluko" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruluko/Ruluko-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ruluko"
  homepage "https://fonts.google.com/specimen/Ruluko"

  font "Ruluko-Regular.ttf"

  # No zap stanza required
end

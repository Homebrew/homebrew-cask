cask "font-suranna" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/suranna/Suranna-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Suranna"
  homepage "https://fonts.google.com/specimen/Suranna"

  font "Suranna-Regular.ttf"

  # No zap stanza required
end

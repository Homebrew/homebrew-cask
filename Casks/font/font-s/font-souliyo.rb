cask "font-souliyo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/souliyo/Souliyo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Souliyo"
  homepage "https://fonts.google.com/earlyaccess"

  font "Souliyo-Regular.ttf"

  # No zap stanza required
end

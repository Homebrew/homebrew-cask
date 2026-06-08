cask "font-alike-angular" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alikeangular/AlikeAngular-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alike Angular"
  homepage "https://fonts.google.com/specimen/Alike+Angular"

  font "AlikeAngular-Regular.ttf"

  # No zap stanza required
end

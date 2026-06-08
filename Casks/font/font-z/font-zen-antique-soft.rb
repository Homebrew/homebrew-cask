cask "font-zen-antique-soft" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zenantiquesoft/ZenAntiqueSoft-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Antique Soft"
  homepage "https://fonts.google.com/specimen/Zen+Antique+Soft"

  font "ZenAntiqueSoft-Regular.ttf"

  # No zap stanza required
end

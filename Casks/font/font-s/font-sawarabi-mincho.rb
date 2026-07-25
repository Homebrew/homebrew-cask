cask "font-sawarabi-mincho" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sawarabimincho/SawarabiMincho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sawarabi Mincho"
  homepage "https://fonts.google.com/specimen/Sawarabi+Mincho"

  font "SawarabiMincho-Regular.ttf"

  # No zap stanza required
end

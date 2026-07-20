cask "font-padyakke-expanded-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/padyakkeexpandedone/PadyakkeExpandedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Padyakke Expanded One"
  homepage "https://fonts.google.com/specimen/Padyakke+Expanded+One"

  font "PadyakkeExpandedOne-Regular.ttf"

  # No zap stanza required
end

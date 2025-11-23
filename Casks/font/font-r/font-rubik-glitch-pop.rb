cask "font-rubik-glitch-pop" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikglitchpop/RubikGlitchPop-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Glitch Pop"
  homepage "https://fonts.google.com/specimen/Rubik+Glitch+Pop"

  font "RubikGlitchPop-Regular.ttf"

  # No zap stanza required
end

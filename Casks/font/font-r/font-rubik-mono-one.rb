cask "font-rubik-mono-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmonoone/RubikMonoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Mono One"
  homepage "https://fonts.google.com/specimen/Rubik+Mono+One"

  font "RubikMonoOne-Regular.ttf"

  # No zap stanza required
end

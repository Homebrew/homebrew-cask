cask "font-rozha-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rozhaone/RozhaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rozha One"
  homepage "https://fonts.google.com/specimen/Rozha+One"

  font "RozhaOne-Regular.ttf"

  # No zap stanza required
end

cask "font-junge" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/junge/Junge-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Junge"
  homepage "https://fonts.google.com/specimen/Junge"

  font "Junge-Regular.ttf"

  # No zap stanza required
end

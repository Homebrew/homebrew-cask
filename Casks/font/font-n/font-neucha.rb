cask "font-neucha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/neucha/Neucha.ttf",
      verified: "github.com/google/fonts/"
  name "Neucha"
  homepage "https://fonts.google.com/specimen/Neucha"

  font "Neucha.ttf"

  # No zap stanza required
end

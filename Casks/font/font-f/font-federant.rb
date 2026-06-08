cask "font-federant" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/federant/Federant-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Federant"
  homepage "https://fonts.google.com/specimen/Federant"

  font "Federant-Regular.ttf"

  # No zap stanza required
end

cask "font-oldenburg" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oldenburg/Oldenburg-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Oldenburg"
  homepage "https://fonts.google.com/specimen/Oldenburg"

  font "Oldenburg-Regular.ttf"

  # No zap stanza required
end

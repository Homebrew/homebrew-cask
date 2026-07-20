cask "font-aubrey" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aubrey/Aubrey-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aubrey"
  homepage "https://fonts.google.com/specimen/Aubrey"

  font "Aubrey-Regular.ttf"

  # No zap stanza required
end

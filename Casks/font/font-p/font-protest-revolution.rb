cask "font-protest-revolution" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/protestrevolution/ProtestRevolution-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Revolution"
  homepage "https://fonts.google.com/specimen/Protest+Revolution"

  font "ProtestRevolution-Regular.ttf"

  # No zap stanza required
end

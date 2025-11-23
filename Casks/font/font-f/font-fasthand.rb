cask "font-fasthand" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fasthand/Fasthand-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fasthand"
  homepage "https://fonts.google.com/specimen/Fasthand"

  font "Fasthand-Regular.ttf"

  # No zap stanza required
end

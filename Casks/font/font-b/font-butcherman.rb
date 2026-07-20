cask "font-butcherman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/butcherman/Butcherman-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Butcherman"
  homepage "https://fonts.google.com/specimen/Butcherman"

  font "Butcherman-Regular.ttf"

  # No zap stanza required
end

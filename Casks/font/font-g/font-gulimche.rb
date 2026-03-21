cask "font-gulimche" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gulimche/GulimChe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "GulimChe"
  homepage "https://fonts.google.com/specimen/GulimChe"

  font "GulimChe-Regular.ttf"

  # No zap stanza required
end

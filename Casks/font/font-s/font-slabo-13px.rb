cask "font-slabo-13px" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/slabo13px/Slabo13px-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Slabo 13px"
  homepage "https://fonts.google.com/specimen/Slabo+13px"

  font "Slabo13px-Regular.ttf"

  # No zap stanza required
end

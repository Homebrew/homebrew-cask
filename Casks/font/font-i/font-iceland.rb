cask "font-iceland" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/iceland/Iceland-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Iceland"
  homepage "https://fonts.google.com/specimen/Iceland"

  font "Iceland-Regular.ttf"

  # No zap stanza required
end

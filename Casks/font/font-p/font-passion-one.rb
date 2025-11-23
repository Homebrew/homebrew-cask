cask "font-passion-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/passionone"
  name "Passion One"
  homepage "https://fonts.google.com/specimen/Passion+One"

  font "PassionOne-Black.ttf"
  font "PassionOne-Bold.ttf"
  font "PassionOne-Regular.ttf"

  # No zap stanza required
end

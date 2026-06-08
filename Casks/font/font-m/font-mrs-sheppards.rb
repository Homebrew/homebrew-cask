cask "font-mrs-sheppards" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrssheppards/MrsSheppards-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mrs Sheppards"
  homepage "https://fonts.google.com/specimen/Mrs+Sheppards"

  font "MrsSheppards-Regular.ttf"

  # No zap stanza required
end

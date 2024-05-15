cask "font-purple-purse" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/purplepurse/PurplePurse-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Purple Purse"
  homepage "https://fonts.google.com/specimen/Purple+Purse"

  font "PurplePurse-Regular.ttf"

  # No zap stanza required
end

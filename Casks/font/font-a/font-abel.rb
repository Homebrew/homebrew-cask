cask "font-abel" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/abel/Abel-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Abel"
  homepage "https://fonts.google.com/specimen/Abel"

  font "Abel-Regular.ttf"

  # No zap stanza required
end

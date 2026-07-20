cask "font-bbh-hegarty" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhhegarty/BBHHegarty-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Hegarty"
  homepage "https://fonts.google.com/specimen/BBH+Hegarty"

  font "BBHHegarty-Regular.ttf"

  # No zap stanza required
end

cask "font-bbh-sans-hegarty" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhsanshegarty/BBHSansHegarty-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Sans Hegarty"
  homepage "https://fonts.google.com/specimen/BBH+Sans+Hegarty"

  font "BBHSansHegarty-Regular.ttf"

  # No zap stanza required
end

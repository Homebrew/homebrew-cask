cask "font-adlam-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/adlamdisplay/ADLaMDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ADLaM Display"
  homepage "https://fonts.google.com/specimen/ADLaM+Display"

  font "ADLaMDisplay-Regular.ttf"

  # No zap stanza required
end

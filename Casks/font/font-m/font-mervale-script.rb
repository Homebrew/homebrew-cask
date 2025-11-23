cask "font-mervale-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mervalescript/MervaleScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mervale Script"
  homepage "https://fonts.google.com/specimen/Mervale+Script"

  font "MervaleScript-Regular.ttf"

  # No zap stanza required
end

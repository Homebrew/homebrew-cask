cask "font-herr-von-muellerhoff" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/herrvonmuellerhoff/HerrVonMuellerhoff-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Herr Von Muellerhoff"
  homepage "https://fonts.google.com/specimen/Herr+Von+Muellerhoff"

  font "HerrVonMuellerhoff-Regular.ttf"

  # No zap stanza required
end

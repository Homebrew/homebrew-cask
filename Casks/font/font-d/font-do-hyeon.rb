cask "font-do-hyeon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dohyeon/DoHyeon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Do Hyeon"
  homepage "https://fonts.google.com/specimen/Do+Hyeon"

  font "DoHyeon-Regular.ttf"

  # No zap stanza required
end

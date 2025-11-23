cask "font-black-ops-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blackopsone/BlackOpsOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Black Ops One"
  homepage "https://fonts.google.com/specimen/Black+Ops+One"

  font "BlackOpsOne-Regular.ttf"

  # No zap stanza required
end

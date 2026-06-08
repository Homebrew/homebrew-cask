cask "font-stalinist-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stalinistone/StalinistOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stalinist One"
  homepage "https://fonts.google.com/specimen/Stalinist+One"

  font "StalinistOne-Regular.ttf"

  # No zap stanza required
end

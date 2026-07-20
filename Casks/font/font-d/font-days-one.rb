cask "font-days-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/daysone/DaysOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Days One"
  homepage "https://fonts.google.com/specimen/Days+One"

  font "DaysOne-Regular.ttf"

  # No zap stanza required
end

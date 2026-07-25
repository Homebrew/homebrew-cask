cask "font-single-day" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/singleday/SingleDay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Single Day"
  homepage "https://fonts.google.com/specimen/Single+Day"

  font "SingleDay-Regular.ttf"

  # No zap stanza required
end

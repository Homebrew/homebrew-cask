cask "font-average-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/averagesans/AverageSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Average Sans"
  homepage "https://fonts.google.com/specimen/Average+Sans"

  font "AverageSans-Regular.ttf"

  # No zap stanza required
end

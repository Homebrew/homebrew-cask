cask "font-train-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trainone/TrainOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Train One"
  homepage "https://fonts.google.com/specimen/Train+One"

  font "TrainOne-Regular.ttf"

  # No zap stanza required
end

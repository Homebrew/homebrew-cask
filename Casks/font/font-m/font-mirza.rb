cask "font-mirza" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mirza"
  name "Mirza"
  homepage "https://fonts.google.com/specimen/Mirza"

  font "Mirza-Bold.ttf"
  font "Mirza-Medium.ttf"
  font "Mirza-Regular.ttf"
  font "Mirza-SemiBold.ttf"

  # No zap stanza required
end

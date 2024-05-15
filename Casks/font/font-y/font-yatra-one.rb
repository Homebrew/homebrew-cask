cask "font-yatra-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yatraone/YatraOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yatra One"
  homepage "https://fonts.google.com/specimen/Yatra+One"

  font "YatraOne-Regular.ttf"

  # No zap stanza required
end

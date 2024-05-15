cask "font-headland-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/headlandone/HeadlandOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Headland One"
  homepage "https://fonts.google.com/specimen/Headland+One"

  font "HeadlandOne-Regular.ttf"

  # No zap stanza required
end

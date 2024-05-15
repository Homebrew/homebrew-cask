cask "font-grey-qo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/greyqo/GreyQo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grey Qo"
  homepage "https://fonts.google.com/specimen/Grey+Qo"

  font "GreyQo-Regular.ttf"

  # No zap stanza required
end

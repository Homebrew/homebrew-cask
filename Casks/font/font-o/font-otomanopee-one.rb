cask "font-otomanopee-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/otomanopeeone/OtomanopeeOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Otomanopee One"
  homepage "https://fonts.google.com/specimen/Otomanopee+One"

  font "OtomanopeeOne-Regular.ttf"

  # No zap stanza required
end

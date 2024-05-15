cask "font-rancho" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/rancho/Rancho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rancho"
  desc "Comfortable brush script typeface that works just as well in a barn or at the country club"
  homepage "https://fonts.google.com/specimen/Rancho"

  font "Rancho-Regular.ttf"

  # No zap stanza required
end

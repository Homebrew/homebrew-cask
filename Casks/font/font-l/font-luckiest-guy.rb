cask "font-luckiest-guy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/luckiestguy/LuckiestGuy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Luckiest Guy"
  desc "Friendly heavyweight sans serif typeface inspired by 1950s advertisements with custom hand lettering"
  homepage "https://fonts.google.com/specimen/Luckiest+Guy"

  font "LuckiestGuy-Regular.ttf"

  # No zap stanza required
end

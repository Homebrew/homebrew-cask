cask "font-jeju-hallasan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jejuhallasan/JejuHallasan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jeju Hallasan"
  homepage "https://fonts.google.com/earlyaccess"

  font "JejuHallasan-Regular.ttf"

  # No zap stanza required
end

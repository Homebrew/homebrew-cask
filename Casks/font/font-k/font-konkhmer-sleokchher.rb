cask "font-konkhmer-sleokchher" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/konkhmersleokchher/KonkhmerSleokchher-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Konkhmer Sleokchher"
  homepage "https://fonts.google.com/specimen/Konkhmer+Sleokchher"

  font "KonkhmerSleokchher-Regular.ttf"

  # No zap stanza required
end

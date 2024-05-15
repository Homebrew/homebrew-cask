cask "font-konkhmer-sleokchher" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/konkhmersleokchher/KonkhmerSleokchher-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Konkhmer Sleokchher"
  desc "Ideal for use as headings or in large typography"
  homepage "https://fonts.google.com/specimen/Konkhmer+Sleokchher"

  font "KonkhmerSleokchher-Regular.ttf"

  # No zap stanza required
end

cask "font-big-shoulders-inline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersinline/BigShouldersInline%5Bopsz%2Cwght%5D.ttf"
  name "Big Shoulders Inline"
  homepage "https://github.com/xotypeco/big_shoulders"

  font "BigShouldersInline[opsz,wght].ttf"

  # No zap stanza required
end

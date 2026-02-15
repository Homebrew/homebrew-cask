cask "font-chiron-hei-hk" do
  version "2.607"
  sha256 "f77e633d10fab4beefd89b506120f480fe319a2b263431fb6a93d28fb87d6b9e"

  url "https://github.com/chiron-fonts/chiron-hei-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Hei HK"
  name "昭源黑體"
  homepage "https://github.com/chiron-fonts/chiron-hei-hk"

  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKItVF.otf"
  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKVF.otf"

  # No zap stanza required
end

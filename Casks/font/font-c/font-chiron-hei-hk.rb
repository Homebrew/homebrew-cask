cask "font-chiron-hei-hk" do
  version "2.603"
  sha256 "775f09f2f7779ed5a8447276f3b1d26d5e452634d0b4edb5a06b383e1aa63da9"

  url "https://github.com/chiron-fonts/chiron-hei-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Hei HK"
  name "昭源黑體"
  homepage "https://github.com/chiron-fonts/chiron-hei-hk"

  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKItVF.otf"
  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKVF.otf"

  # No zap stanza required
end

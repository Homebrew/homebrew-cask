cask "font-chiron-hei-hk" do
  version "2.605"
  sha256 "6231cc9eb99b319a52e29570434c4d52c99456e4a92eaab433b5817269575e9e"

  url "https://github.com/chiron-fonts/chiron-hei-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Hei HK"
  name "昭源黑體"
  homepage "https://github.com/chiron-fonts/chiron-hei-hk"

  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKItVF.otf"
  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKVF.otf"

  # No zap stanza required
end

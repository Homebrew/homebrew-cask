cask "font-chiron-hei-hk" do
  version "2.609"
  sha256 "71345f99a832fe82fe8a6107a1ca3de33f5aa8021849cb04a70d79c8ba3acc8e"

  url "https://github.com/chiron-fonts/chiron-hei-hk/archive/refs/tags/v#{version}.tar.gz"
  name "Chiron Hei HK"
  name "昭源黑體"
  homepage "https://github.com/chiron-fonts/chiron-hei-hk"

  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKItVF.otf"
  font "chiron-hei-hk-#{version}/VAR_OTF/ChironHeiHKVF.otf"

  # No zap stanza required
end

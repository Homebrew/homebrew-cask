cask "font-migu-1c" do
  version "20150712"
  sha256 "62aba11af4e5343b5437c866e3747366d084b63885539c92636222d2978999f1"

  url "https://osdn.dl.osdn.jp/mix-mplus-ipa/63545/migu-1c-#{version}.zip"
  name "Migu 1C"
  homepage "https://mix-mplus-ipa.osdn.jp/migu/#migu1c"

  font "migu-1c-#{version}/migu-1c-bold.ttf"
  font "migu-1c-#{version}/migu-1c-regular.ttf"

  # No zap stanza required
end

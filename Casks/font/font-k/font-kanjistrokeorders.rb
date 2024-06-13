cask "font-kanjistrokeorders" do
  version "4.004,1oyQoTB531tbhlYaOW7ugvutXZ7HSlJfW"
  sha256 "3374338e6d72c703ac2d70f69d8822463e8e285f32accc497e8ec8fe2ddbec2d"

  url "https://drive.google.com/uc?export=download&id=#{version.csv.second}"
  name "KanjiStrokeOrders"
  homepage "https://sites.google.com/site/nihilistorguk/"

  font "KanjiStrokeOrders_v#{version.before_comma}.ttf"

  caveats do
    license "https://drive.google.com/file/d/1HOybxFTh2aD6zoLoh-ixHf2vTSgqFs6f/preview"
  end

  # No zap stanza required
end

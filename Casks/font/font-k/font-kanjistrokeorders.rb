cask "font-kanjistrokeorders" do
  version "4.004,1snpD-IQmT6fGGQjEePHdDzE2aiwuKrz4"
  sha256 "53061d36e2c7400b2b941bd6328c40d386586d5c5a3f89c43825a2d6979d5eee"

  url "https://drive.google.com/uc?export=download&id=#{version.csv.second}"
  name "KanjiStrokeOrders"
  homepage "https://sites.google.com/site/nihilistorguk/"

  livecheck do
    url :homepage
    regex(%r{
      href=.*?drive\.google\.com/uc\?export=download&amp;id=([\w-]+?)[&"' >]
      .+?KanjiStrokeOrders[._-]v?(\d+(?:\.\d+)+)\.zip
    }imx)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  font "KanjiStrokeOrders_v#{version.before_comma}.ttf"

  caveats do
    license "https://drive.google.com/file/d/1HOybxFTh2aD6zoLoh-ixHf2vTSgqFs6f/preview"
  end

  # No zap stanza required
end

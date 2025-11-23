cask "font-kanjistrokeorders" do
  version "4.005,1TELymEhF0YMK0Ma-fQlpHNmZLg9Xw3zx"
  sha256 "15525b225e9a9f08445eabdb5cac5c145431ac845107e3109b3fdcbfb77ac733"

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

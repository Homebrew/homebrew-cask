cask "font-dream-han-sans" do
  version "3.03,2.005,2.003"
  sha256 "d8660a3b6df8a0d761642eabceb89b7cdf1ba210e966cda2e0c3b19d3a755a4d"

  url "https://github.com/Pal3love/dream-han-cjk/releases/download/dream-#{version.csv.first}-sans-#{version.csv.second}-serif-#{version.csv.third}/DreamHanSans.zip"
  name "Dream Han Sans"
  homepage "https://github.com/Pal3love/dream-han-cjk/"

  livecheck do
    url :url
    regex(/^dream[._-]v?(\d+(?:\.\d+)+)[._-]sans[._-]v?(\d+(?:\.\d+)+)[._-]serif[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  font "DreamHanSans-W1.ttc"
  font "DreamHanSans-W2.ttc"
  font "DreamHanSans-W3.ttc"
  font "DreamHanSans-W4.ttc"
  font "DreamHanSans-W5.ttc"
  font "DreamHanSans-W6.ttc"
  font "DreamHanSans-W7.ttc"
  font "DreamHanSans-W8.ttc"
  font "DreamHanSans-W9.ttc"
  font "DreamHanSans-W10.ttc"
  font "DreamHanSans-W11.ttc"
  font "DreamHanSans-W12.ttc"
  font "DreamHanSans-W13.ttc"
  font "DreamHanSans-W14.ttc"
  font "DreamHanSans-W15.ttc"
  font "DreamHanSans-W16.ttc"
  font "DreamHanSans-W17.ttc"
  font "DreamHanSans-W18.ttc"
  font "DreamHanSans-W19.ttc"
  font "DreamHanSans-W20.ttc"
  font "DreamHanSans-W21.ttc"
  font "DreamHanSans-W22.ttc"
  font "DreamHanSans-W23.ttc"
  font "DreamHanSans-W24.ttc"
  font "DreamHanSans-W25.ttc"
  font "DreamHanSans-W26.ttc"
  font "DreamHanSans-W27.ttc"

  # No zap stanza required
end

cask "font-mengshen-regular" do
  version "2.0.0,20261119-165248"
  sha256 "821a8452ff63e32d5967174b1cd8d47b6fe2b520aef70128564671ec0d618245"

  url "https://github.com/MaruTama/Mengshen-pinyin-font/releases/download/v#{version.csv.second}/Mengshen-HanSerif.ttf"
  name "Mengshen Pinyin"
  name "萌神拼音"
  homepage "https://github.com/MaruTama/Mengshen-pinyin-font"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        version = release["name"]&.[](regex, 1)
        next if version.blank?

        "#{version},#{release["tag_name"]&.tr("v", "")}"
      end
    end
  end

  font "Mengshen-HanSerif.ttf"

  zap :not_required
end

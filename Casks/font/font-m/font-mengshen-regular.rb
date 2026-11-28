cask "font-mengshen-regular" do
  version "2.0.0,20261128-170155"
  sha256 "0b731d4db2d7631453520ca986110b8b9ec6ddce26b8a5660509559276c5271a"

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

        release_tag = release["tag_name"]&.tr("v", "")
        "#{version},#{release_tag}"
      end
    end
  end

  font "Mengshen-HanSerif.ttf"

  zap :not_required
end

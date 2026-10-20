cask "font-mengshen-regular" do
  version "2.0.0,20261020-153012"
  sha256 "25e63fd506e21914946120f71e1a755d1031b198b71ce27f5a8529de551c4068"

  url "https://github.com/MaruTama/Mengshen-pinyin-font/archive/refs/tags/v#{version.csv.second}.tar.gz"
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

  font "Mengshen-pinyin-font-#{version.csv.second}/outputs/Mengshen-HanSerif.ttf"
  font "Mengshen-pinyin-font-#{version.csv.second}/outputs/Mengshen-Handwritten.ttf"

  # No zap stanza required
end

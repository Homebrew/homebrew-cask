cask "font-mengshen-regular" do
  version "2.0.0,20260307-164439"
  sha256 "e5af0a531cd6c395904f4f57def224204da3773f70dffaf28da0418e744d4027"

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

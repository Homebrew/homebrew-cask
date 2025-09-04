cask "font-mengshen-regular" do
  version "2.0.0,20250816-153246"
  sha256 "e78bf748b82d3b7b6d1644afabb8174bd24cecb390e434b369d13e1d9b86f4df"

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

        version = release["name"][regex, 1]
        next if version.blank?

        "#{version},#{release["tag_name"]&.tr("v", "")}"
      end
    end
  end

  font "Mengshen-pinyin-font-#{version.csv.second}/outputs/Mengshen-HanSerif.ttf"
  font "Mengshen-pinyin-font-#{version.csv.second}/outputs/Mengshen-Handwritten.ttf"

  # No zap stanza required
end

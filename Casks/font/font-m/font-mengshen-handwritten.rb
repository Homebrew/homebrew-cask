cask "font-mengshen-handwritten" do
  version "2.0.0,20261125-125901"
  sha256 "8632584c0d699c96140e8ccbcfeb1253381f853c6ec5b2a8af3561ab6616c481"

  url "https://github.com/MaruTama/Mengshen-pinyin-font/releases/download/v#{version.csv.second}/Mengshen-Handwritten.ttf"
  name "Mengshen Pinyin Handwritten"
  name "萌神拼音 手写体"
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

  font "Mengshen-Handwritten.ttf"

  zap :not_required
end

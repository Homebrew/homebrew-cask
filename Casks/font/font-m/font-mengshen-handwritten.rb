cask "font-mengshen-handwritten" do
  version "2.0.0,20261119-165248"
  sha256 "ce84cc18a308daf7eebcd3810d672e8e9375db3ff091f6c8e46be809cb0fac46"

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

        "#{version},#{release["tag_name"]&.tr("v", "")}"
      end
    end
  end

  font "Mengshen-Handwritten.ttf"

  zap :not_required
end

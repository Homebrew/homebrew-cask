cask "font-mengshen-handwritten" do
  version "2.0.0,20261122-035412"
  sha256 "29b23ce6f743972ce8db4f8aa6bd3f26564e9c469c5d3d742e5178f694e88ca2"

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

cask "font-mengshen-handwritten" do
  version "2.0.0,20261020-153012"
  sha256 "7c8227aeba49858f06af8426160c1f89329022c6255aa8a355c356c5638067cc"

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

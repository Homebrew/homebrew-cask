cask "font-mengshen-regular" do
  version "2.0.0,20261122-035412"
  sha256 "82a211cac965f36f6c176e01f86444a233caae362e0ca198faa830f3a595ac0c"

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

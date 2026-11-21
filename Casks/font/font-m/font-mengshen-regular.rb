cask "font-mengshen-regular" do
  version "2.0.0,20261121-173203"
  sha256 "71e2b716c1482d0b72bf7979a4bc97f8eac90186c264f27d5a44187e37b383ce"

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

cask "font-mengshen-regular" do
  version "2.0.0,20261020-153012"
  sha256 "0f2a8b0b4ffb6f8610e2d957ac0e79af3a1415b7b22a93c719c88d550ed2328b"

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

        "#{version},#{release["tag_name"]&.tr("v", "")}"
      end
    end
  end

  font "Mengshen-HanSerif.ttf"

  zap :not_required
end

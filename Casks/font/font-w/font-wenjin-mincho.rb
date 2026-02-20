cask "font-wenjin-mincho" do
  version "2.003"
  sha256 "8ec93bf7ffb8134fe30ad7d3a60b2eb0f5b2d935aa2e712a1dd3a9e2c605a3a4"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

  # No zap stanza required
end
